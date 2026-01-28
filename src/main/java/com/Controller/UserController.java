package com.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Entity.UserEntity;
import com.Repository.*;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	InternshipRepository internshipRepo;
    @GetMapping("/internDashboard")
    public String showDashboard(Model model,HttpSession session) {
    	
    	UserEntity user = (UserEntity) session.getAttribute("user");
    	
    	if (user != null) {
            model.addAttribute("userName", user.getFirstName());
            model.addAttribute("fullName", user.getFirstName() + " " + user.getLastName());
            model.addAttribute("userEmail", user.getEmail());
            model.addAttribute("userPhone", user.getContactNum());
        }

        // Fetch all internships from Hibernate and pass to JSP
        model.addAttribute("internships", internshipRepo.findAll());
//        
        return "internDashboard";
    }
    
    @GetMapping("/internProfile")
    public String internProfile(Model model)
    {
    	return "internProfile";
    }
    
    
    @GetMapping("/careers")
    public String showCareerPortal(Model model,HttpSession session) {
    	UserEntity intern = (UserEntity) session.getAttribute("user");
        
        // Pass real data to the dashboard
        model.addAttribute("userName", intern.getFirstName());
        model.addAttribute("userEmail", intern.getEmail());
        model.addAttribute("userCity", intern.getCity());
        
        model.addAttribute("appCount", 1); // Logic for real count can be added later
        model.addAttribute("pendingTasks", 0);
        return "careerPortal";
    }

    @PostMapping("/submit-application")
    public String handleApplication() {
        // Logic to save the application using Hibernate/JPA
        return "redirect:/internDashboard";
    }
    
    @GetMapping("/internApplications")
    public String showMyApplications(Model model) {
        // These details are grounded in your actual application activity
        model.addAttribute("userName", "Krisha");
        model.addAttribute("userEmail", "krishalavingiya08@gmail.com");
        
        // In a real scenario, fetch these from ApplicationRepository
        return "internApplication";
    }
    
    @GetMapping("/internAssignMent")
    public String internAssignment(Model model)
    {
    	return "internAssignment";
    }
}