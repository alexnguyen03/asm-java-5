package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import ch.qos.logback.core.model.Model;

@Controller
@RequestMapping("/admin")
public class ReviewsController {
    @GetMapping("/review")
    public String index(Model m) {
        return "/admin/reviews";
    }
}
