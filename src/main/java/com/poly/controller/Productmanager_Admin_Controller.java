package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class Productmanager_Admin_Controller {
    @GetMapping("/product-manager")
    public String getProductManager(){
        return "admin/productManager";
    }
}
