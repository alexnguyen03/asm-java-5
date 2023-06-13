package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.Product;
import com.poly.model.Review;
import com.poly.repository.ProductDAO;
import com.poly.repository.ReviewDAO;

@Controller
@RequestMapping("shop/product-detail")
public class ShopDetailController {
	@Autowired
	ProductDAO productDao;

	@GetMapping("")
	public String index(Model model) {
		Product product = productDao.findById(1001).get();
		List<Review> reviews = product.getReviews();
		List<Product> product_similars = productDao.findByProductCategogy(product.getCategory().getId());
		float sum_Rating = 0;
		for (Review review : reviews) {
			sum_Rating += review.getRating();
		}
		float count_Rating = sum_Rating / reviews.size();
		float rounded_rating = Math.round(count_Rating);
		model.addAttribute("product", product);
		model.addAttribute("count_rating", rounded_rating);
		model.addAttribute("reviews", reviews);
		model.addAttribute("product_similars", product_similars);
		return "/client/shop-details";
	}
}
