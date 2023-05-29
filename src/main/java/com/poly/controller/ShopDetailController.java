package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopDetailController {
    @GetMapping("shop-details")
    public String index() {
        return "/client/shop-details";
    }
}
