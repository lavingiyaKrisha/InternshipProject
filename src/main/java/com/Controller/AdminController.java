package com.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.Entity.*;
import com.Repository.*;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private TechnologyRepository technologyRepository;

    @Autowired
    private InternshipRepository internshipRepository;

    @Autowired
    private userRepository userRepo;

    @Autowired
    private InternDetailRepository internDetailRepo;

    @Autowired
    private BCryptPasswordEncoder encoder;

    @GetMapping
    public String dashboard(Model model) {
        model.addAttribute("technologies", technologyRepository.findAll());
        model.addAttribute("internships", internshipRepository.findAll());
        return "adminDashboard";
    }

    // ===== ADD INTERN =====
    @GetMapping("/addIntern")
    public String addInternPage() {
        return "adminAddIntern";
    }

    
    @PostMapping("/addIntern")
    public String addIntern(UserEntity user,
                            InternDetailEntity intern,
                            Model model) {

        user.setRole("INTERN");
        user.setPassword(encoder.encode(user.getPassword()));
        userRepo.save(user);

        intern.setUser(user);
        internDetailRepo.save(intern);

        model.addAttribute("msg", "Intern added successfully");
        return "redirect:/admin";
    }

    // ===== TECHNOLOGY =====
    @GetMapping("/addTechnology")
    public String showTechnology(Model model) {
        model.addAttribute("technologies", technologyRepository.findAll());
        return "adminTechnology";
    }

    @PostMapping("/addTechnology")
    public String addTechnology(TechnologyEntity tech) {
        tech.setActive(true);
        technologyRepository.save(tech);
        return "redirect:/admin/addTechnology";
    }

    // ===== INTERNSHIP =====
    @GetMapping("/internship")
    public String internshipPage(Model model) {
        model.addAttribute("technologies", technologyRepository.findAll());
        model.addAttribute("internships", internshipRepository.findAll());
        return "adminInternship";
    }

    @PostMapping("/addInternship")
    public String addInternship(InternshipEntity internship) {
        internship.setActive(true);
        internshipRepository.save(internship);
        return "redirect:/admin/internship";
    }
}
