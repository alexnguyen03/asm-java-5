package com.poly.controller;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class OrderManagementController {

    @GetMapping("order")
    public String orderManagementView(Model m) {
        return "/admin/order";
    }

    @GetMapping("/order/cancel")
    public String orderCancelView(Model m) {
        m.addAttribute("isCancel", true);
        return "/admin/order";
    }

}
