package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.Account;
import com.poly.model.Product;
import com.poly.repository.AccountDAO;
import com.poly.repository.ProductDAO;
import com.poly.service.SessionService;

@Controller
@RequestMapping("/")
public class RootController {
	@Autowired
	ProductDAO productDAO;

	@Autowired
	AccountDAO accoutDAO;

	@Autowired
	SessionService session;

	@GetMapping("")
	public String index(Model model) {
		if (session.get("username") != null) {
			Account account = accoutDAO.findById(session.get("username")).orElse(null);
			model.addAttribute("isAdmin", account.getAdmin());
		}

		List<Product> items = productDAO.findTop10BestSellingProducts();
		model.addAttribute("items", items);
		model.addAttribute("pageActive", "index");
		return "/client/index";
	}

}
