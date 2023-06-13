package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.poly.model.Account;
import com.poly.repository.AccountDAO;
import com.poly.service.SessionService;

@Controller
@RequestMapping("account")
public class VerifyAccountController {
    @Autowired
    SessionService sessionService;
    @Autowired
    AccountDAO accountDAO;

    @GetMapping("verify")
    public String getForm() {
        return "/account/verify";
    }

    @PostMapping("verify")
    public String validationSignup(@RequestParam("code") String code, Model model) {
        if (code.equals(sessionService.get("code"))) {
            accountDAO.save((Account) sessionService.get("signupUser"));
            return "/account/login";
        }
        model.addAttribute("msg", "Mã xác nhận không hợp lệ vui lòng kiểm tra lại !");
        return "/account/verify";
    }
}
