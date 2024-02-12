package com.example.login.Controller;

import com.example.login.Model.User;
import com.example.login.Repository.UserRepository;
import com.example.login.Service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;

@Controller
@SessionAttributes
public class HomeController {

    @Autowired
    private UserRepository userRepository;

    @RequestMapping("/")
    public String landingPage(Model model)
    {
        return "page";
    }


    @PostMapping("/register")
    public String submit(@RequestParam("name") String name,
                         @RequestParam("email") String email,
                         @RequestParam("password") String password, HttpSession session)
    {
        if(userService.checkEmail(email))
        {
            //session.setAttribute("msg", "Email id already exist");
            session.setAttribute("registrationSuccess", false);
            session.setAttribute("registrationError", true);
        }
        else {
            User user=new User();
            user.setName(name);
            user.setEmail(email);
            user.setPassword(password);
            userRepository.save(user);
            System.out.println("Data Saved");
            //session.setAttribute("msg", "Registered");
            session.setAttribute("registrationSuccess", true);
            session.setAttribute("registrationError", false);
        }

        return "redirect:/";

    }

    @Autowired
    private UserService userService;

    @PostMapping("/log")
    public String loginHomepage(@RequestParam("email1") String userName,
                                @RequestParam("password1") String password, Model model) {
        System.out.println("Log");
        User user = null;

        try {
            user = userRepository.findByEmail(userName);
        } catch (Exception e) {
            System.out.println("User not found !!!");
        }

        if (user != null && user.getPassword().equals(password)) {
            if ("doctor".equalsIgnoreCase(user.getRole())) {
                // Redirect to doctor's page
                model.addAttribute("USERNAME", userName);
                return "doctor"; // Change to the appropriate doctor's page
            } else if ("patient".equalsIgnoreCase(user.getRole())) {
                // Redirect to patient's page
                model.addAttribute("USERNAME", userName);
                return "dashboard"; // Change to the appropriate patient's page
            }
        }

        model.addAttribute("error", "User Not Found or Invalid Credentials");

        return "page";
    }
//
//    @Autowired
//    private HttpServletRequest request;
//
//    @PostMapping("/log")
//    public String loginHomepage(@RequestParam("email1") String userName,
//                                @RequestParam("password1") String password, Model model) {
//        User u = null;
//        User p = null;
//        try {
//            u = userRepository.findByEmail(userName);
//            p = userRepository.findByPassword(password);
//        } catch (Exception e) {
//            System.out.println("User not found !!!");
//        }
//        if (u != null && p != null) {
//            model.addAttribute("USERNAME", userName);
//            // Redirect to the desired URL using HttpServletRequest
//            return "forward:/login/log"; // forward instead of redirect
//        }
//        model.addAttribute("error", "User Not Found, Kindly register!!");
//        return "page";
//    }

    @GetMapping("/logout")
    public String out(Model model)
    {
        return "page";
    }
}
