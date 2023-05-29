package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class Category_Admin_Controller {
    @GetMapping("/category")
    public String getCategory(){
        return "admin/category";
    }
}
