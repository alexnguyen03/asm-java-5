package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class CouponsController {
    @GetMapping("coupon")
    public String index(Model m) {
        return "/admin/coupons";
    }

    @GetMapping("user")
    public String userManagementView(Model m) {
        return "/admin/user";
    }

    @GetMapping("order")
    public String orderManagementView(Model m) {
        return "/admin/order";
    }

    @GetMapping("/order/cancel")
    public String orderCancelView(Model m) {
        m.addAttribute("isCancel", true);
        return "/admin/order";
    }

    @GetMapping("/report")
    public String reportTop10View(Model m) {
        return "/admin/report";
    }

    @GetMapping("/report/report-by-category")
    public String reportByCategoryView(Model m) {
        return "/admin/report-by-category";
    }

    @GetMapping("/report/report-by-product")
    public String reportByProductView(Model m) {
        return "/admin/report-by-product";
    }

    @GetMapping("/report/report-by-user")
    public String reportByUserView(Model m) {
        return "/admin/report-by-user";
    }

    @GetMapping("")
    public String getAdminHome(Model m) {
        return "/admin/index";
    }

}
