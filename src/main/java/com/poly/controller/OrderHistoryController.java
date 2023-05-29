package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderHistoryController {
	@GetMapping("order-history")
    public String index() {
        return "/client/order-history";
    }
}
