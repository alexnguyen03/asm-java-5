package com.poly.controller;

import java.io.File;
import java.util.List;
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
			redirectAttributes.addFlashAttribute("successMessage", "Cập nhật sản phẩm thành công!");
		} else {
			redirectAttributes.addFlashAttribute("errorMessage", "Cập nhật sản phẩm thất bại!");
		}

		return "redirect:/admin/product-manager";
	}

	@PostMapping("/create")
	private String createProduct(@ModelAttribute("item") Product item, @RequestParam("photo_file") MultipartFile img) {
		File file = null;

		if (!img.isEmpty()) {
			file = param.save(img, "/img/product/");
		}

		item.setImage(file.getName());
		item.setAvailable(true);

		productDAO.save(item);
		return "redirect:/admin/product-manager";
	}

//	@PostMapping("/delete/{id}")
//	private String deleteProduct(@PathVariable("id") Integer id) {
//		Product product = productDAO.findById(id).orElse(null);
//		System.out.println(product.getId());
//		product.setAvailable(false);

//		Delete img if product is deleted
//		String uploadDir = "src/main/webapp/img/product/";
//        FileUploadUtil.deleteFile(uploadDir, product.getImage());
//		return "redirect:/admin/product-manager";
//	}

	@RequestMapping("search-product")
	public String searchAndPageProduct(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		// Init Product
		Product item = new Product();
		model.addAttribute("item", item);

		String kwords = kw.orElse(session.get("keywords"));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = productDAO.findByNameLike("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "admin/productManager";
	}

	@RequestMapping("filter-product-by-available")
	public String FilterAvailableAndPageProduct(Model model,
			@RequestParam(value = "available", required = false) Boolean isAvailable,
			@RequestParam("p") Optional<Integer> p) {
//		Init Product
		Product item = new Product();
		model.addAttribute("item", item);

		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = productDAO.findProductsByAvailability(isAvailable, pageable);
		model.addAttribute("page", page);
		return "admin/productManager";
	}

	@RequestMapping("filter-product-by-category")
	public String FilterCategoryAndPageProduct(Model model,
			@PathVariable(value = "categoryId", required = false) String categoryId,
			@RequestParam("p") Optional<Integer> p) {
//		Init Product
		Product item = new Product();
		model.addAttribute("item", item);

		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = productDAO.findByCategoryNameLike("%" + categoryId + "%", pageable);
		model.addAttribute("page", page);

		List<Category> category = categoryDAO.findAll();
		model.addAttribute("lst_category", category);

		return "admin/productManager";
	}
}
