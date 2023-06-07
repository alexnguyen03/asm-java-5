package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.model.Category;
import com.poly.model.Product;
import com.poly.repository.CategoryDAO;
import com.poly.repository.ProductDAO;

import jakarta.servlet.ServletContext;

@Controller
@RequestMapping("/admin/product-manager")
public class ProductManagementController {
	@Autowired
	ProductDAO productDAO;

	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	ServletContext app;

	@GetMapping("")
	private String getProductManager(Model model) {
		Product item = new Product();
		model.addAttribute("item", item);
		List<Product> items = productDAO.findAll();
		model.addAttribute("items", items);
		List<Category> category = categoryDAO.findAll();
		model.addAttribute("lst_category", category);
//		for (Category c : category) {
//		System.out.println(c.getName());
//	}
		return "admin/productManager";
	}

	@GetMapping("/edit/{id}")
	private String edit(Model model, @PathVariable("id") Integer id) {
		Product item = productDAO.findById(id).get();
		model.addAttribute("item", item);
		List<Product> items = productDAO.findAll();
		model.addAttribute("items", items);
		return "admin/productManager";
	}

	@PostMapping("/create")
	private String create(@ModelAttribute("item") Product item, @RequestParam("photo_file") MultipartFile img)
			throws IllegalStateException, IOException {
		String fileName = img.getOriginalFilename();
		File file = new File(app.getRealPath("/img/product/" + fileName));
		img.transferTo(file);
		item.setImage(fileName);
		productDAO.save(item);
		return "redirect:/admin/product-manager";
	}

	@PostMapping("/update")
	private String update(Product item, @RequestParam("photo_file") MultipartFile img)
			throws IllegalStateException, IOException {
		String filename = img.getOriginalFilename();
		File file = new File(app.getRealPath("/images/" + filename));
		img.transferTo(file);
		item.setImage(filename);
		productDAO.save(item);
		return "redirect:/admin/edit/" + item.getId();
	}

	@PostMapping("/delete/{id}")
	private String delete(@PathVariable("id") Integer id) {
		productDAO.deleteById(id);
		return "redirect:/admin/product-manager";
	}

	@ModelAttribute("list_avaiable")
	public Map<Boolean, String> getAvaiable() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(false, "Hết hàng");
		map.put(true, "Còn hàng");
		return map;
	}

	@ModelAttribute("list_category")
	public Map<String, String> getCategory() {
		Map<String, String> map = new HashMap<>();
		List<Category> categoryitems = categoryDAO.findAll();
		for (Category item : categoryitems) {
			map.put(item.getId(), item.getName());
		}
		return map;
	}

}
