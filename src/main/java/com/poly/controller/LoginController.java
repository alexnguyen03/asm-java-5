package com.poly.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.Account;
import com.poly.repository.AccountDAO;

@Controller
@RequestMapping("account")
public class LoginController {
    @Autowired
    AccountDAO dao;

    @GetMapping("/login")
    public String showLoginForm(Model model) {
        Account account = new Account();
        model.addAttribute("account", account); 
        return "account/login";
    }

    @PostMapping("/login")
    public String processLoginForm(@ModelAttribute("account") Account account, Model model) {
        Optional<Account> userStore = dao.findById(account.getUsername());
        System.out.println(userStore);
        Account user = userStore.orElse(null);

        if (user == null) {
            model.addAttribute("message", "Invalid username");
            return "account/login";
        } else if (!user.getPassword().equals(account.getPassword())) {
            model.addAttribute("message", "Invalid password");
            return "account/login";
        } else {
            model.addAttribute("message", "Login successful");
            return "redirect:/account/login";
        }
    }

}
