package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("shop")
public class ShopDetailController {
    @GetMapping("product-detail")
    public String index() {
        return "/client/shop-details";
    }
}