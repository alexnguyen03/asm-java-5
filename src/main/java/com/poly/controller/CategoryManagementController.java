package com.poly.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.Category;
import com.poly.repository.CategoryDAO;
import com.poly.service.SessionService;

@Controller
@RequestMapping("/admin/category-manager")
public class CategoryManagementController {
	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	SessionService session;

	@GetMapping("")
	public String getCategoryManager(Model model, @RequestParam("p") Optional<Integer> p) {
		// init category
		Category item = new Category();
		model.addAttribute("item", item);
		// Get param p and pageable
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Category> page = categoryDAO.findAll(pageable);
		model.addAttribute("page", page);
		
//		Sidebar Active
		model.addAttribute("isPageActive", "category");
		
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

	@PostMapping("/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		categoryDAO.deleteById(id);
		return "redirect:/admin/category-manager";
	}

	@RequestMapping("search-category")
	public String searchAndPageProduct(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		// Init Product
		Category item = new Category();
		model.addAttribute("item", item);

		String kwords = kw.orElse(session.get("keywords"));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Category> page = categoryDAO.findByNameLike("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "admin/category";
	}
}
