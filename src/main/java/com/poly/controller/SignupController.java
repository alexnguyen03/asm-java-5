package com.poly.controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.model.Account;
import com.poly.repository.AccountDAO;
import com.poly.service.EmailServiceImpl;
import com.poly.service.ParamService;
import com.poly.service.SessionService;
import com.poly.utils.EmailDetail;
import com.poly.utils.Generator;

@Controller
@RequestMapping("account")
public class SignupController {
    @Autowired
    SessionService sessionService;
    @Autowired
    EmailServiceImpl emailServiceImpl;
    @Autowired
    AccountDAO accountDAO;
    @Autowired
    ParamService paramService;

    @GetMapping("signup")
    public String getFormSignin(Account account) {
        return "/account/signup";
    }

    @PostMapping("signup")
    public String sendCode(Account account, @RequestParam("avt") MultipartFile file) {
        File newFile = paramService.save(file, "/files");
        account.setPhoto(newFile.getName());
        sessionService.set("signupMail", account.getEmail());
        sessionService.set("signupUser", account);

        System.out.println(account.getEmail());
        String code = Generator.getCode();
        sessionService.set("code", code);

        EmailDetail details = new EmailDetail();
        details.setRecipient("namnhpc03517@fpt.edu.vn");
        details.setSubject("Xác nhận tài khoản thành viên 3MEMS ");
        details.setMsgBody(
                "Vui lòng nhập mã xác nhận bên dưới để hoàn thành tạo tài khoản\nMã xác nhận của bạn là " + code);
        String status = emailServiceImpl.sendSimpleMail(details);
        System.out.println(status);
        return "/account/verify";
    }
}
