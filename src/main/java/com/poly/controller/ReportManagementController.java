package com.poly.controller;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.poly.model.Category;
import com.poly.model.ReportTop10;
import com.poly.repository.CategoryDAO;
import com.poly.repository.OrderDetailDAO;
import com.poly.service.ParamService;

@Controller
@RequestMapping("/admin")
public class ReportManagementController {
    @Autowired
    OrderDetailDAO orderDetailDAO;
    @Autowired
    CategoryDAO categoryDAO;
    @Autowired
    ParamService paramService;

    @GetMapping("/report")
    public String reportTop10View(Model model) {

        model.addAttribute("reports", orderDetailDAO.getInventoryTop());
        model.addAttribute("categories", categoryDAO.findAll());
        return "/admin/report";
    }

    @PostMapping("/report")
    public String reportTop10Search(Model model) {
        String searchKey = paramService.getString("searchKey", "");
        if (!searchKey.isBlank()) {
            Date searchVal = paramService.getDate("searchVal", "yyyy-MM");
            LocalDate localDate = searchVal.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
            int day = localDate.getDayOfMonth();
            int month = localDate.getMonthValue();
            int year = localDate.getYear();
            if (searchKey.equals("date")) {
            }
            if (searchKey.equals("month")) {
            }
            if (searchKey.equals("month")) {
            }
            if (searchKey.equals("month")) {
            }
            model.addAttribute("searchVal", searchVal);
            model.addAttribute("searchKey", searchKey);
        }
        model.addAttribute("reports", orderDetailDAO.getInventoryTop());
        model.addAttribute("categories", categoryDAO.findAll());
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

    @ModelAttribute("listCategory")
    public Map<String, String> getListCategory() {
        Map<String, String> map = new HashMap<>();
        List<Category> listCategory = categoryDAO.findAll();
        for (Category category : listCategory) {
            map.put(category.getId(), category.getName());
        }
        return map;
    }
}
