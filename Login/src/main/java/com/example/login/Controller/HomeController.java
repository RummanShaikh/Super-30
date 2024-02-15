package com.example.login.Controller;

import com.example.login.Model.User;
import com.example.login.Repository.UserRepository;
import com.example.login.Service.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

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

    @Autowired
    private RestTemplate restTemplate;

    @Autowired
    private ObjectMapper objectMapper;

    @PostMapping ("/log")
    public String loginHomepage(@RequestParam("email1") String userName,
                                @RequestParam("password1") String password, Model model) {
        User u = null;
        User p = null;
        try {
            u = userRepository.findByEmail(userName);
            //p = userRepository.findByPassword(password);
        } catch (Exception e) {
            System.out.println("User not found !!!");
        }
        if (u != null && u.getPassword().equals(password)) {
            model.addAttribute("USERNAME", userName);
            String role = u.getRole();
            if (role != null && role.equals("admin")) {
                HttpHeaders headers = new HttpHeaders();
                headers.setContentType(MediaType.APPLICATION_JSON);
                String userJson;
                try {
                    userJson = objectMapper.writeValueAsString(u);
                } catch (JsonProcessingException e) {
                    // Handle serialization exception
                    e.printStackTrace();
                    return "error";
                }
                HttpEntity<String> requestEntity = new HttpEntity<>(userJson, headers);

                String otherMicroserviceUrl = "http://localhost:8888/record"; // Replace with the actual URL

                // Send User object to the other microservice using RestTemplate
                ResponseEntity<String> responseEntity = restTemplate.postForEntity(otherMicroserviceUrl + "/receiveUser", requestEntity, String.class);

                return "redirect:http://localhost:8888/record/display";
            } else if (role != null && role.equals("doctor")) {

                HttpHeaders headers = new HttpHeaders();
                headers.setContentType(MediaType.APPLICATION_JSON);
                String userJson;
                try {
                    userJson = objectMapper.writeValueAsString(u);
                } catch (JsonProcessingException e) {
                    // Handle serialization exception
                    e.printStackTrace();
                    return "error";
                }
                HttpEntity<String> requestEntity = new HttpEntity<>(userJson, headers);

                String otherMicroserviceUrl = "http://localhost:8888/appointment"; // Replace with the actual URL

                // Send User object to the other microservice using RestTemplate
                ResponseEntity<String> responseEntity = restTemplate.postForEntity(otherMicroserviceUrl + "/receiveUser", requestEntity, String.class);

                return "redirect:http://localhost:8888/appointment/doctor";
            }
            else {

                HttpHeaders headers = new HttpHeaders();
                headers.setContentType(MediaType.APPLICATION_JSON);
                String userJson;
                try {
                    userJson = objectMapper.writeValueAsString(u);
                } catch (JsonProcessingException e) {
                    // Handle serialization exception
                    e.printStackTrace();
                    return "error";
                }
                HttpEntity<String> requestEntity = new HttpEntity<>(userJson, headers);

                String otherMicroserviceUrl = "http://localhost:8888/appointment"; // Replace with the actual URL

                // Send User object to the other microservice using RestTemplate
                ResponseEntity<String> responseEntity = restTemplate.postForEntity(otherMicroserviceUrl + "/receiveUser", requestEntity, String.class);

                return "redirect:http://localhost:8888/appointment/patient";
            }
            //return "redirect:http://localhost:8888/appointment/patient";
        }
        model.addAttribute("error", "User Not Found, Kindly register!!");

        ResponseEntity<String> entity= new ResponseEntity<>(userName, HttpStatus.OK);

        return "page";
    }


    @GetMapping("/login/logout")
    public String out(Model model)
    {
        return "page";
    }
}
