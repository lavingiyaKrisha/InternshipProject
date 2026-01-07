package com.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Entity.InternDetailEntity;
import com.Entity.InternshipEntity;
import com.Entity.TechnologyEntity;
import com.Entity.UserEntity;
import com.Repository.InternshipRepository;
import com.Repository.TechnologyRepository;

@Controller
@RequestMapping("/admin")
public class AdminController {

//    @Autowired
//    private InternService internService;

    @Autowired
    private TechnologyRepository technologyRepository;

    @Autowired
    private InternshipRepository internshipRepository;

    // Dashboard
    @GetMapping("/dashboard")
    public String dashboard(Model model) {

        // If you want lists on dashboard
        model.addAttribute("technologies", technologyRepository.findAll());
        model.addAttribute("internships", internshipRepository.findAll());

        return "adminDashboard";
    }
    
    @GetMapping
    public String adminHome(Model model) {
        model.addAttribute("technologies", technologyRepository.findAll());
        model.addAttribute("internships", internshipRepository.findAll());
        return "adminDashboard";
    }


    // Add Intern
    @PostMapping("/addIntern")
    public String addIntern(UserEntity user,InternDetailEntity intern,Model model) {

//        internService.addIntern(user, intern);

        model.addAttribute("msg", "Intern added successfully");

        // reload dashboard data
        model.addAttribute("technologies", technologyRepository.findAll());
        model.addAttribute("internships", internshipRepository.findAll());

        return "adminDashboard";
    }

    
    @GetMapping("/addTechnology")
    public String showAddTechnologyForm(Model model) {
        model.addAttribute("technologies", technologyRepository.findAll());
        return "adminTechnology"; // JSP page name
    }

    // Add Technology
    @PostMapping("/addTechnology")
    public String addTechnology(TechnologyEntity tech, Model model) {

        tech.setActive(true);
        technologyRepository.save(tech);

        model.addAttribute("msg", "Technology added successfully");

        model.addAttribute("technologies", technologyRepository.findAll());
        model.addAttribute("internships", internshipRepository.findAll());

        return "adminDashboard";
    }
    
    @GetMapping("/internship")
    public String manageInternship(Model model) {

        model.addAttribute("technologies", technologyRepository.findAll());
        model.addAttribute("internships", internshipRepository.findAll());

        return "adminInternship";
    }


    // Add Internship
    @PostMapping("/addInternship")
    public String addInternship(InternshipEntity internship,Model model) {

        internship.setActive(true);
        internshipRepository.save(internship);

        model.addAttribute("msg", "Internship added successfully");

        model.addAttribute("technologies", technologyRepository.findAll());
        model.addAttribute("internships", internshipRepository.findAll());

        return "adminInternship";
    }
}
