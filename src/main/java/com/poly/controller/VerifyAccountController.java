package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("account")
public class VerifyAccountController {
    @GetMapping("verify")
    public String getForm() {
        return "/account/verify";
    }
}
