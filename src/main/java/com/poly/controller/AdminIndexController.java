package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminIndexController {
	@RequestMapping("")
	public String index(Model model) {
		
		model.addAttribute("isPageActive", "index");
		return "/admin/index";
	}
}
