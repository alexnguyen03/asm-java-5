package com.poly.controller;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class CouponsManagementController {
    @GetMapping("coupon")
    public String index(Model m) {
        return "/admin/coupons";
    }

}
