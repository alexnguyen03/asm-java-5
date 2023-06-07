package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.Category;
import com.poly.repository.CategoryDAO;

@Controller
@RequestMapping("/admin/category-manager")
public class CategoryManagementController {
	@Autowired
	CategoryDAO categoryDAO;

	@GetMapping("")
	public String getCategoryManager(Model model) {
		Category item = new Category();
		model.addAttribute("item", item);
		List<Category> items = categoryDAO.findAll();
		model.addAttribute("items", items);
		return "admin/category";
	} 

	@PostMapping("/edit")
	public String edit(Model model, @RequestParam("id") String id, @RequestParam("name") String name) {
		Category item = categoryDAO.findById(id).get();
		item.setName(name);
		categoryDAO.save(item);
		return "redirect:/admin/category-manager";
	}

	@PostMapping("/create")
	public String create(Category item) {
		categoryDAO.save(item);
		return "redirect:/admin/category-manager";
	}

//	@PostMapping("/update")
//	public String update(Category item) {
//		categoryDAO.save(item);
//		return "redirect:/admin/category-manager/edit/" + item.getId();
//	}

	@PostMapping("/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		categoryDAO.deleteById(id);
		return "redirect:/admin/category-manager";
	}
}
