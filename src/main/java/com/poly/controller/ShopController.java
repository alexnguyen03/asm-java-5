package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.Product;
import com.poly.repository.ProductDAO;

@Controller
@RequestMapping("shop")
public class ShopController {
	@Autowired
	ProductDAO productDAO;

	@GetMapping("")
	public String index(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = productDAO.findAll(pageable);
		System.out.println("ABC");
		System.out.println("" + page.getTotalPages());
		model.addAttribute("page", page);
		return "/client/shop";
	}

	@GetMapping("cart-detail")
	public String getCartDetail() {
		return "/client/cart-detail";
	}
}
