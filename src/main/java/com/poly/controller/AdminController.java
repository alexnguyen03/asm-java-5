package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import ch.qos.logback.core.model.Model;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @GetMapping("")
    public String dashboard(Model m) {
        return "/admin/index";
    }

    @GetMapping("user")
    public String userManagementView(Model m) {
        return "/admin/user";
    }

}
