package com.example.login.Service;

import com.example.login.Model.User;
import com.example.login.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public boolean checkEmail(String email)
    {
        return userRepository.existsByEmail(email);
    }
}
