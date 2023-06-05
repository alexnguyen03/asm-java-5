package com.poly.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.Account;
import com.poly.repository.AccountDAO;

@Controller
@RequestMapping("/admin")
public class UserManagementController {
    @Autowired
    AccountDAO accountDAO;

    @GetMapping("user")
    public String userManagementView(Model m) {
        List<Account> accounts = accountDAO.findAll();
        for (Account account : accounts) {
            System.out.println(account.getFullname());
        }
        return "/admin/user";
    }

}
