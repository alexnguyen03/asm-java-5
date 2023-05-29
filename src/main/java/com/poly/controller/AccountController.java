package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("account")
public class AccountController {

    @GetMapping("login")
    public String getFormLogin() {
        return "/account/login";
    }

    @GetMapping("signup")
    public String getFormSignin() {
        return "/account/signup";
    }

    @GetMapping("forgotpassword")
    public String getFormForgotPassword() {
        return "/account/forgotpassword";
    }

    @GetMapping("token")
    public String getFormToken() {
        return "/account/token";
    }

    @GetMapping("resetpassword")
    public String getFormResetpassword() {
        return "/account/resetpassword";
    }

    @GetMapping("update-account")
    public String getFormUpdate() {
        return "/account/update_account";
    }

    @GetMapping("change-password")
    public String getFormChangpass() {
        return "account/change-password";
    }
}
