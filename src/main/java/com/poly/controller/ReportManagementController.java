package com.poly.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.poly.model.ReportTop10;
import com.poly.repository.OrderDetailDAO;

@Controller
@RequestMapping("/admin")
public class ReportManagementController {
    @Autowired
    OrderDetailDAO orderDetailDAO;

    @GetMapping("/report")
    public String reportTop10View(Model model) {
        model.addAttribute("reports", orderDetailDAO.getInventoryTop());
        return "/admin/report";
    }

    @GetMapping("/report/chart")
    @ResponseBody
    public List<ReportTop10> getreportTop10(Model model) {
        return orderDetailDAO.getInventoryTop();
    }

    @GetMapping("/report/report-by-category")
    public String reportByCategoryView(Model model) {
        return "/admin/report-by-category";
    }

    @GetMapping("/report/report-by-product")
    public String reportByProductView(Model model) {
        return "/admin/report-by-product";
    }

    @GetMapping("/report/report-by-user")
    public String reportByUserView(Model model) {
        return "/admin/report-by-user";
    }

    @GetMapping("")
    public String getAdminHome(Model model) {
        return "/admin/index";
    }
}
