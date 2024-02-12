package com.example.login.Repository;

import com.example.login.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;


public interface UserRepository extends JpaRepository<User, Long> {

    public boolean existsByEmail(String email);

    User findByEmail(String email);
    User findByPassword(String password);
}
