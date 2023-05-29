package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class AccountController {

    @GetMapping("/signup")
    public String getFormSignin() {
        return "/account/signup";
    }

    @GetMapping("/forgotpassword")
    public String getFormForgotPassword() {
        return "/account/forgotpassword";
    }

    @GetMapping("/token")
    public String getFormToken() {
        return "/account/token";
    }

    @GetMapping("/resetpassword")
    public String getFormResetpassword() {
        return "/account/resetpassword";
    }

    @GetMapping("update-account")
    public String index() {
        return "/account/update_account";
    }
}
