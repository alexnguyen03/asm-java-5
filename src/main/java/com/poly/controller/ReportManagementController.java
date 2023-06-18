package com.poly.controller;

import java.time.LocalDate;
import java.time.ZoneId;
import java.time.temporal.ChronoField;
import java.time.temporal.WeekFields;
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
import com.poly.repository.OrderDAO;
import com.poly.repository.OrderDetailDAO;
import com.poly.service.ParamService;

@Controller
@RequestMapping("/admin")
public class ReportManagementController {
    @Autowired
    OrderDetailDAO orderDetailDAO;
    @Autowired
    OrderDAO orderlDAO;
    @Autowired
    CategoryDAO categoryDAO;
    @Autowired
    ParamService paramService;

    @GetMapping("/report")
    public String reportTop10View(Model model) {
        model.addAttribute("reports", orderDetailDAO.getTopProduct());
        model.addAttribute("categories", categoryDAO.findAll());
        model.addAttribute("reportPage", "top");
        model.addAttribute("title", "THỐNG KÊ");
        model.addAttribute("isPageActive", "statistic");
        return "/admin/report";
    }

    @PostMapping("/report")
    public String reportTop10Search(Model model) {
        String searchKey = paramService.getString("searchKey", "");
        List<ReportTop10> reports = null;
        if (!searchKey.isBlank()) {
            System.out.println(searchKey);
            Date searchVal = null;
            LocalDate localDate = null;
            int day = 0;
            int month = 0;
            int year = 0;
            if (searchKey.equals("date")) {
                searchVal = paramService.getDate("searchVal", "yyyy-MM-dd");
                localDate = searchVal.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
                day = localDate.getDayOfMonth();
                month = localDate.getMonthValue();
                year = localDate.getYear();
                reports = orderDetailDAO.getTopProductByDate(day, month, year);
            } else if (searchKey.equals("week")) {
                String searchValString = paramService.getString("searchVal", "");
                String weekStr = searchValString.substring(6, searchValString.length());
                String yearStr = searchValString.substring(0, 4);
                reports = orderDetailDAO.getTopProductByWeek(Integer.parseInt(weekStr), Integer.parseInt(yearStr));
            } else if (searchKey.equals("month")) {
                searchVal = paramService.getDate("searchVal", "yyyy-MM");
                localDate = searchVal.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
                month = localDate.getMonthValue();
                year = localDate.getYear();
                reports = orderDetailDAO.getTopProductByMonth(month, year);
            } else if (searchKey.equals("year")) {
                searchVal = paramService.getDate("searchVal", "yyyy");
                localDate = searchVal.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
                year = localDate.getYear();
                reports = orderDetailDAO.getTopProductByYear(year);
            }
            model.addAttribute("searchVal", searchVal);
            model.addAttribute("searchKey", searchKey);
        }
        model.addAttribute("title", "THỐNG KÊ");

        model.addAttribute("reportPage", "top");
        model.addAttribute("reports", reports);
        model.addAttribute("categories", categoryDAO.findAll());
        model.addAttribute("isPageActive", "statistic");
        return "/admin/report";
    }

    @GetMapping("/report/chart")
    @ResponseBody
    public List<ReportTop10> getReportTop10(Model model) {
        return orderDetailDAO.getTopProduct();
    }

    @GetMapping("/report/report-by-category")
    public String reportByCategoryView(Model model) {
        model.addAttribute("reports", orderDetailDAO.getReportByCategories());
        model.addAttribute("isPageActive", "statistic");
        model.addAttribute("reportPage", "category");
        model.addAttribute("title", "THỐNG KÊ");

        return "/admin/report-by-category";
    }

    @GetMapping("/report/report-by-product")
    public String reportByProductView(Model model) {
        model.addAttribute("reports", orderDetailDAO.getReportByProducts());
        model.addAttribute("isPageActive", "statistic");
        model.addAttribute("title", "THỐNG KÊ");

        model.addAttribute("reportPage", "product");
        return "/admin/report-by-product";
    }

    @GetMapping("/report/report-by-user")
    public String reportByUserView(Model model) {
        model.addAttribute("reports", orderDetailDAO.getReportByUsers());
        model.addAttribute("reportPage", "user");
        model.addAttribute("isPageActive", "statistic");
        model.addAttribute("title", "THỐNG KÊ");
        return "/admin/report-by-user";
    }

    // @GetMapping("")
    // public String getAdminHome(Model model) {
    // // don can xu ly
    // model.addAttribute("orderXLCount", orderlDAO.findByStatus("C").size());
    // return "/admin/index";
    // }
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
