package com.poly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.Category;
import com.poly.model.Product;
import com.poly.repository.CategoryDAO;
import com.poly.repository.ProductDAO;
import com.poly.service.SessionService;

@Controller
@RequestMapping("shop")
public class ShopController {
	@Autowired
	ProductDAO productDAO;

	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	SessionService session;

	@GetMapping("")
	public String index(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = productDAO.findAll(pageable);
		model.addAttribute("page", page);
		model.addAttribute("pageActive", "shop");

//		Category 
		List<Category> categoryLst = categoryDAO.findAll();
		model.addAttribute("categoryLst", categoryLst);
		return "/client/shop";
	}

	@GetMapping("cart-detail")
	public String getCartDetail() {
		return "/client/cart-detail";
	}

	@RequestMapping("shop-search-product")
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

//		Category 
		List<Category> categoryLst = categoryDAO.findAll();
		model.addAttribute("categoryLst", categoryLst);

		return "/client/shop";
	}

	@RequestMapping("sort-by-category/{name}")
	public String sortByCategory(@ModelAttribute("item") Category item, @PathVariable("name") String name,
			@RequestParam("p") Optional<Integer> p, Model model) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = productDAO.findByCategoryNameLike("%" + name + "%", pageable);
		System.out.println(page);
		model.addAttribute("page", page);

//		Category 
		List<Category> categoryLst = categoryDAO.findAll();
		model.addAttribute("categoryLst", categoryLst);

		return "/client/shop";
	}

	@RequestMapping("sort-by-price-product")
	public String sortByPrice(Model model, @RequestParam("product-header-sort") String sortValue,
			@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = productDAO.findByPriceSortASC(pageable);

		if (sortValue.equalsIgnoreCase("ASC")) {
			System.out.println("ASC");
			page = productDAO.findByPriceSortASC(pageable);
		} else if (sortValue.equalsIgnoreCase("DESC")) {
			System.out.println("DESC");
			page = productDAO.findByPriceSortDESC(pageable);
		}

		for (Product product : page) {
			System.out.println(product.getName());
		}
		model.addAttribute("page", page);

//		Category 
		List<Category> categoryLst = categoryDAO.findAll();
		model.addAttribute("categoryLst", categoryLst);

		return ("client/shop");
	}

	@RequestMapping("shop-search-product-by-price")
	public String searchProductByPrice(Model model, @RequestParam("startPrice") Double startPrice,
			@RequestParam("endPrice") Double endPrice, @RequestParam("p") Optional<Integer> p) {

		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = productDAO.findByPriceBetween(startPrice, endPrice, pageable);
		model.addAttribute("page", page);

		// Add category list to model for display
		List<Category> categoryLst = categoryDAO.findAll();
		model.addAttribute("categoryLst", categoryLst);

		return "/client/shop";
	}

	@RequestMapping("shop-search-product-by-tab")
	public String searchAndPageProductByTab(Model model, @RequestParam("keywords") String kw,
			@RequestParam("p") Optional<Integer> p) {
//		Init Product
		Product item = new Product();
		model.addAttribute("item", item);

		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = productDAO.findByNameLike("%" + kw + "%", pageable);
		model.addAttribute("page", page);
		return "/client/shop";
	}
}
