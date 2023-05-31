package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("shop")
public class OrderHistoryController {
	@GetMapping("order-history")
    public String index() {
        return "/client/order-history";
    }
}
