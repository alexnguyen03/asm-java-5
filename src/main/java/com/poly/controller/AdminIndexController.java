package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.repository.OrderDAO;

@Controller
@RequestMapping("/admin")
public class AdminIndexController {
	@Autowired
	OrderDAO orderlDAO;

	@RequestMapping("")
	public String index(Model model) {

		model.addAttribute("isPageActive", "index");
		model.addAttribute("orderXLCount", orderlDAO.findByStatus("C").size());

		return "/admin/index";
	}
}
