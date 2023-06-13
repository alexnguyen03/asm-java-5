package com.poly.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.Coupon;
import com.poly.repository.CouponDAO;
import com.poly.service.ParamService;

@Controller
@RequestMapping("/admin/coupon")
public class CouponsManagementController {
	@Autowired
	CouponDAO dao;
	@Autowired
	ParamService paramService;

	@GetMapping("index")
	public String index(Model model, @RequestParam("p") Optional<Integer> p,
			@RequestParam("field") Optional<String> field) {
		Pageable pageable = PageRequest.of(p.orElse(0), 3, Sort.by(Direction.ASC, field.orElse("discountAmount")));
		Page<Coupon> coupons = dao.findAll(pageable);
		model.addAttribute("coupons", coupons);
		return "/admin/coupons";
	}

	@PostMapping("update")
	public String update(Coupon coupon) {
		dao.save(coupon);
		return "redirect:/admin/coupon/index";
	}

	@PostMapping("create")
	public String create(Coupon coupon) {
		dao.save(coupon);
		return "redirect:/admin/coupon/index";
	}

	@PostMapping("search")
	public String search(Model model, @RequestParam("search") String search, @RequestParam("keyword") String keyword,
			@RequestParam("p") Optional<Integer> p) {
		if (search.equals("ed")) {
			Date date = null;
			try {
				date = paramService.getDate(keyword, "yyyy-MM-dd");
			} catch (Exception e) {
				return "redirect:/admin/coupon/index";
			}

			Pageable pageable = PageRequest.of(p.orElse(0), 3);
			Page<Coupon> coupons = dao.findByExpirationDate(date, pageable);
			if (coupons.getTotalPages() > 0) {
				model.addAttribute("coupons", coupons);
				model.addAttribute("isEd", true);
			} else {
				return "redirect:/admin/coupon/index";
			}

		} else if (search.equals("select")) {
			return "redirect:/admin/coupon/index";
		} else if (search.equals("cd")) {
			Date date = null;
			try {
				date = paramService.getDate(keyword, "yyyy-MM-dd");
			} catch (Exception e) {
				return "redirect:/admin/coupon/index";
			}
			Pageable pageable = PageRequest.of(p.orElse(0), 1);
			Page<Coupon> coupons = dao.findByCreatedDate(date, pageable);
			if (coupons.getTotalPages() > 0) {
				model.addAttribute("coupons", coupons);
				model.addAttribute("isCd", true);
			} else {
				return "redirect:/admin/coupon/index";
			}
		} else if (search.equals("name")) {
			if (keyword != null) {
				Pageable pageable = PageRequest.of(p.orElse(0), 1);
				Page<Coupon> coupons = dao.findByCouponName("%" + keyword + "%", pageable);
				if (coupons.getTotalPages() > 0) {
					model.addAttribute("coupons", coupons);
					model.addAttribute("isName", true);
				} else {
					return "redirect:/admin/coupon/index";
				}
			}
			if (keyword.equals("")) {
				return "redirect:/admin/coupon/index";
			}
		}
		return "/admin/coupons";
	}

	@PostMapping("filter")
	public String search(Model model, @RequestParam("status") String status, @RequestParam("p") Optional<Integer> p) {
		if (status.equals("active")) {
			System.out.println(status);
			Pageable pageable = PageRequest.of(p.orElse(0), 3);
			Page<Coupon> coupons = dao.findByActivated(true, pageable);
			model.addAttribute("coupons", coupons);
			model.addAttribute("isActive", true);
		} else if (status.equals("inactive")) {
			Pageable pageable = PageRequest.of(p.orElse(0), 3);
			Page<Coupon> coupons = dao.findByActivated(false, pageable);
			model.addAttribute("coupons", coupons);
			model.addAttribute("isInactive", true);
		} else if (status.equals("select")) {
			return "redirect:/admin/coupon/index";
		}
		return "/admin/coupons";
	}
}
