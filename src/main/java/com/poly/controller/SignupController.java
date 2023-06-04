package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("account")
public class SignupController {
    @GetMapping("signup")
    public String getFormSignin() {
        return "/account/signup";
    }
}
