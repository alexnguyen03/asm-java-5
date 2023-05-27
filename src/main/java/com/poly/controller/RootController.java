package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class RootController {
	@GetMapping("")
	public String index(Model m) {
		// m.addAttribute("msg", "Hoài Nam");
		return "/client/index";
	}

}
