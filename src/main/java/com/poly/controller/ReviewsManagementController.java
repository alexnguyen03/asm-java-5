package com.poly.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.repository.query.FluentQuery.FetchableFluentQuery;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.Account;
import com.poly.model.Coupon;
import com.poly.model.Product;
import com.poly.model.Review;
import com.poly.repository.AccountDAO;
import com.poly.repository.ProductDAO;
import com.poly.repository.ReviewDAO;
import com.poly.service.ParamService;

@Controller
@RequestMapping("/admin/review/")
public class ReviewsManagementController {
	@Autowired
	ReviewDAO dao;
	@Autowired
	ParamService paramService;
	@Autowired
	AccountDAO acdao;
	@Autowired
	ProductDAO productDao;

	@GetMapping("/index")
	public String index(Model model, @RequestParam("p") Optional<Integer> p,
			@RequestParam("field") Optional<String> field) {
		Pageable pageable = PageRequest.of(p.orElse(0), 2, Sort.by(Direction.DESC, field.orElse("rating")));
		Page<Review> reviews = dao.findAll(pageable);
		model.addAttribute("reviews", reviews);
		return "/admin/reviews";
	}

	@PostMapping("create")
	public String create() {
		int productId = Integer.parseInt(paramService.getString("productId", ""));
		int rating = Integer.parseInt(paramService.getString("rating", ""));
		String text = paramService.getString("textReview", "");
		// lấy user từ session
		Account account = acdao.findById("hoainam").get();
		Product product = productDao.findById(productId).get();
		Review review = new Review();
		review.setAccount(account);
		review.setProduct(product);
		review.setDateReview(new Date());
		review.setTextReview(text);
		review.setRating(rating);
		dao.save(review);
		return "redirect:/shop/product-detail";
	}

	@GetMapping("delete/{id}")
	public String create(@PathVariable("id") Integer id) {
		dao.deleteById(id);
		return "redirect:/admin/review/index";
	}

	@PostMapping("search")
	public String search(Model model, @RequestParam("search") String search, @RequestParam("keyword") String keyword,
			@RequestParam("p") Optional<Integer> p) {
		if (search.equals("nameSP")) {
			if (keyword != null) {
				Pageable pageable = PageRequest.of(p.orElse(0), 3);
				Page<Review> reviews = dao.findByNameProduct("%" + keyword + "%", pageable);
				if (reviews.getTotalPages() > 0) {
					model.addAttribute("reviews", reviews);
					model.addAttribute("isNameSP", true);
				} else {
					return "redirect:/admin/review/index";
				}
			}
			if (keyword.equals("")) {
				return "redirect:/admin/review/index";
			}
		} else if (search.equals("countS")) {
			if (keyword.equals("")) {
				return "redirect:/admin/review/index";
			}
			try {
				Integer.parseInt(keyword);
			} catch (Exception e) {
				return "redirect:/admin/review/index";
			}
			if (keyword != null) {
				Pageable pageable = PageRequest.of(p.orElse(0), 3);
				Page<Review> reviews = dao.findByRating(Integer.parseInt(keyword), pageable);
				if (reviews.getTotalPages() > 0) {
					model.addAttribute("reviews", reviews);
					model.addAttribute("iscountS", true);
				} else {
					return "redirect:/admin/review/index";
				}
			}
		} else if (search.equals("nameKH")) {
			if (keyword != null) {
				Pageable pageable = PageRequest.of(p.orElse(0), 3);
				Page<Review> reviews = dao.findByNameAcount("%" + keyword + "%", pageable);
				if (reviews.getTotalPages() > 0) {
					model.addAttribute("reviews", reviews);
					model.addAttribute("isnameKH", true);
				} else {
					return "redirect:/admin/review/index";
				}
			}
			if (keyword.equals("")) {
				return "redirect:/admin/review/index";
			}
		} else if (search.equals("select")) {
			return "redirect:/admin/review/index";
		}
		return "/admin/reviews";
	}
}
