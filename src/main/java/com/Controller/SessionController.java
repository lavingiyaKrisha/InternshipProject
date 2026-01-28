package com.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.Entity.UserEntity;
import com.Repository.userRepository;
import com.Service.MailService;
import com.Spring25InternshipProjectApplication;
import com.cloudinary.Cloudinary;

import jakarta.servlet.http.HttpSession;


@Controller
public class SessionController {

    private final Spring25InternshipProjectApplication spring25InternshipProjectApplication;

	@Autowired
	userRepository userRepo;
	

//	@Autowired
//	Cloudinary cloudinary;
	
	
	@Autowired
	MailService mailService;


    SessionController(Spring25InternshipProjectApplication spring25InternshipProjectApplication) {
        this.spring25InternshipProjectApplication = spring25InternshipProjectApplication;
    }
	
	
	@GetMapping("signup")
	public String signUp() {
		return "signUp";
	}
	
	@PostMapping("saveUser")
	public String saveUser(UserEntity user, MultipartFile profilePicFile) {
	    try {
	        // 1️⃣ Encrypt password
	        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
	        user.setPassword(encoder.encode(user.getPassword()));

	        // 3️⃣ Save user (Hibernate)
	        userRepo.save(user);

	        // 4️⃣ Send welcome mail
	        mailService.sendWelcomeMail(user);

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return "login";
	}

	
	 @PostMapping("/login-process")
	 public String loginProcess(String email, String password, HttpSession session,Map<String, Object> model) {

	     UserEntity user = userRepo.findByEmail(email);

	     if (user == null) {
	         model.put("error", "Email not found");
	         return "login";
	     }
	     
	     BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
	     if (!encoder.matches(password, user.getPassword())) {
	         model.put("error", "Incorrect password");
	         return "login";
	     }
	     
	     session.setAttribute("user",user);
	     if ("Admin".equalsIgnoreCase(user.getRole())) {
	    	    return "redirect:/adminDashboard";
	    	} else {
	    	    // If internDashboard is a JSP, this stays as is. 
	    	    // If it's a URL mapping, use return "redirect:/dashboard";
	    	    return "careerPortal"; 
	    	}
	 }

	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/fg")
	public String fg() {
		return "forgotPassword";
	}
	
	@PostMapping("resetPassword")
	public String resetPassword(String email, Map<String, Object> model) {

	    UserEntity user = userRepo.findByEmail(email);

	    if (user == null) {
	        model.put("error", "Email not registered");
	        return "forgotPassword";
	    }

	    // Generate OTP
	    String otp = String.valueOf((int)(Math.random() * 900000) + 100000);

	    // Send OTP Mail
	    mailService.sendOtpMail(email, otp);

	    // Store OTP & email (temporary)
	    model.put("email", email);
	    model.put("otp", otp);

	    return "resetPassword";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
	    // 1️⃣ Clear all session data
	    session.invalidate(); 
	    
	    // 2️⃣ Redirect back to the login page
	    return "redirect:/login"; 
	}
	
}







