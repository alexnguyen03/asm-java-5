package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChangePasswordController {
    @RequestMapping("/change-password")
    public String login(){
        return "account/change-password";
    }
}
