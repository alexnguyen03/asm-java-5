package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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
import com.poly.service.ParamService;
import com.poly.service.SessionService;

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

	@Autowired
	SessionService session;

	@Autowired
	ParamService param;

	@GetMapping("")
	private String getProductManager(Model model, @RequestParam("p") Optional<Integer> p) {
		Product item = new Product();
		model.addAttribute("item", item);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = productDAO.findAll(pageable);
		model.addAttribute("page", page);
		List<Category> category = categoryDAO.findAll();
		model.addAttribute("lst_category", category);
		return "admin/productManager";
	}

	@PostMapping("/update")
	public String editProduct(@ModelAttribute("item") Product item,
			@RequestParam("new_photo_file") MultipartFile file) {
		
		System.out.println(item.getImage());
		String old_img = item.getImage();

		System.out.println(item.getId());
		System.out.println(old_img);
		System.out.println(file.isEmpty());

		if (file != null && !file.isEmpty()) {
			File file2 = param.save(file, "/img/product/");
			item.setImage(file2.getName());
		} else {
			item.setImage(old_img);
		}

		productDAO.save(item);
		return "redirect:/admin/product-manager";
	}

	@PostMapping("/create")
	private String createProduct(@ModelAttribute("item") Product item, @RequestParam("photo_file") MultipartFile img) {
		File file = null;

		if (!img.isEmpty()) {
			file = param.save(img, "/img/product/");
		}

		item.setImage(file.getName());

		productDAO.save(item);
		return "redirect:/admin/product-manager";
	}

	@PostMapping("/delete/{id}")
	private String deleteProduct(@PathVariable("id") Integer id) {
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

	@RequestMapping("search-product")
	public String searchAndPageProduct(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
//		Init Product
		Product item = new Product();
		model.addAttribute("item", item);

		String kwords = kw.orElse(session.get("keywords"));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = productDAO.findByNameLike("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "admin/productManager";
	}
}
