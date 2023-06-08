package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.Product;
import com.poly.model.ProductDTO;
import com.poly.repository.ProductDAO;

@Controller
@RequestMapping("/")
public class RootController {
	@Autowired
	ProductDAO productDAO;
	
	@GetMapping("")
	public String index(Model m) {
//		List<ProductDTO> items = productDAO.findTop10BestSellingProducts();
//		m.addAttribute("items",items);
		return "/client/index";
	}

}
