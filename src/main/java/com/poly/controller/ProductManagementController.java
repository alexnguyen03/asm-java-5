package com.poly.controller;

import java.io.File;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		model.addAttribute("isPagination", "index");

//		Title 
		model.addAttribute("isPage", "Product Manager");

//		Remove a kwordk search session
		session.remove("isAvaiable");

//		Sidebar Active
		model.addAttribute("isPageActive", "product");

		List<Category> category = categoryDAO.findAll();
		model.addAttribute("lst_category", category);

		return "admin/productManager";
	}

	@PostMapping("/update")
	public String editProduct(@ModelAttribute("product") Product product,
			@RequestParam("photo_file") MultipartFile file, RedirectAttributes redirectAttributes) {

		String oldImg = product.getImage();

		if (file != null && !file.isEmpty()) {
			File file2 = param.save(file, "/img/product/");
			product.setImage(file2.getName());
		} else {
			product.setImage(oldImg);
		}

		productDAO.save(product);

		boolean success = productDAO.save(product) != null;
		if (success) {
			session.set("messageProductManager", "Cập nhật sản phẩm thành công");
		} else {
			session.set("messageProductManager", "Cập nhật phẩm thành công");
			return "redirect:/admin/product-manager";
		}

		return "redirect:/admin/product-manager";
	}

	@PostMapping("/create")
	private String createProduct(@ModelAttribute("item") Product item, @RequestParam("photo_file") MultipartFile img,
			Model model) {
		String name = param.getString("name", "");
		double price = param.getDouble("price", 0);
		System.out.println(name);
		if (name.equals("")) {
			model.addAttribute("message", "Không để trống tên sản phẩm");
			return "admin/productManager";
		}else if(price == 0) {
			model.addAttribute("message", "Không để trống giá sản phẩm");
			return "admin/productManager";
		}

		File file = null;

		if (!img.isEmpty()) {
			file = param.save(img, "/img/product/");
		}

		item.setImage(file.getName());
		item.setAvailable(true);

		session.set("messageProductManager", "Thêm sản phẩm thành công");

		productDAO.save(item);

		return "redirect:/admin/product-manager";
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

//		Remove a kwordk search session
		session.remove("isAvaiable");

		String kwords = kw.orElse(session.get("keywords"));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = productDAO.findByNameLike("%" + kwords + "%", pageable);
		model.addAttribute("page", page);

//		Lst Category
		List<Category> category = categoryDAO.findAll();
		model.addAttribute("lst_category", category);

		return "admin/productManager";
	}

	@RequestMapping("filter-product-by-available")
	public String FilterAvailableAndPageProduct(Model model,
			@RequestParam(value = "available", required = false) Boolean isAvailable,
			@RequestParam("p") Optional<Integer> p) {
//		Init Product
		Product item = new Product();
		model.addAttribute("item", item);

//		Remove a kwordk search session
		session.remove("keywords");

		session.set("isAvaiable", "true");

		if (session.get("isAvaiable") != null) {
			isAvailable = true;
		}

		System.out.println(isAvailable);

		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = productDAO.findProductsByAvailability(isAvailable, pageable);
		model.addAttribute("page", page);

//		Lst Category
		List<Category> category = categoryDAO.findAll();
		model.addAttribute("lst_category", category);

		return "admin/productManager";
	}

	@RequestMapping("filter-product-by-category")
	public String FilterCategoryAndPageProduct(Model model, @RequestParam("category.id") String categoryId,
			@RequestParam("p") Optional<Integer> p) {
//		Init Product
		Product item = new Product();
		model.addAttribute("item", item);

//		Remove a kwordk search session
		session.remove("isAvaiable");

//		Remove a kwordk search session
		session.remove("keywords");

		Category category_kw = categoryDAO.findById(categoryId).get();
		System.out.println(category_kw.getName());

		Pageable pageable = PageRequest.of(p.orElse(0), 15);
		Page<Product> page = productDAO.findByCategoryNameLike("%" + category_kw.getName() + "%", pageable);
		model.addAttribute("page", page);

//		Lst Category
		List<Category> category = categoryDAO.findAll();
		model.addAttribute("lst_category", category);

		return "admin/productManager";
	}
}
