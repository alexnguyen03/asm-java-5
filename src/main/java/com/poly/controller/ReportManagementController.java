package com.poly.controller;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class ReportManagementController {

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

}
