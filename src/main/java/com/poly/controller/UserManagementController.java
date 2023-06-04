package com.poly.controller;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class UserManagementController {

    @GetMapping("user")
    public String userManagementView(Model m) {
        return "/admin/user";
    }

}
