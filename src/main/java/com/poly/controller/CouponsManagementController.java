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
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.Coupon;
import com.poly.repository.CouponDAO;
import com.poly.service.EmailServiceImpl;
import com.poly.service.ParamService;

@Controller
@RequestMapping("/admin/coupon")
public class CouponsManagementController {
	@Autowired
	CouponDAO dao;
	@Autowired
	ParamService paramService;

	@GetMapping("")
	public String index(Model model, @RequestParam("p") Optional<Integer> p, @RequestParam("eop") Optional<Integer> eop,
			@RequestParam("field") Optional<String> field, @RequestParam("d") Optional<Boolean> direc) {
		int defaultPage = 0;
		int defaultElementOfPage = 3;
		String defaultField = "expirationDate";
		String keyword = paramService.getString("keyword", " ");
		String search = paramService.getString("search", " ");
		model.addAttribute("isPageActive", "coupon");

		// asending is default
		Pageable pageable = PageRequest.of(p.orElse(defaultPage), eop.orElse(defaultElementOfPage),
				Sort.by(field.orElse(defaultField)).ascending());

		if (direc.isPresent() && !direc.get().booleanValue()) {
			pageable = PageRequest.of(p.orElse(defaultPage), eop.orElse(defaultElementOfPage),
					Sort.by(field.orElse(defaultField)).descending());
		}

		Page<Coupon> coupons = dao.findAll(pageable);
		if (search.equals("ed")) {
			Date date = null;
			try {
				date = paramService.getDate2(keyword, "yyyy-MM-dd");
			} catch (Exception e) {
				model.addAttribute("success", "Không đúng định dạng năm - tháng - ngày !!!");
				model.addAttribute("isEd", true);
				return "/admin/coupons";
			}
			coupons = dao.findByExpirationDate(date, pageable);
			if (coupons.getTotalPages() > 0) {
				model.addAttribute("coupons", coupons);
				model.addAttribute("success", "Đã tìm thấy ngày hết hạn: " + keyword);
				model.addAttribute("isEd", true);
			} else {
				model.addAttribute("success", "Không tìm thấy ngày hết hạn là: " + keyword);
			}
		} else if (search.equals("select")) {
			model.addAttribute("success", "Chúng tôi chưa biết bạn tìm gì !!!");
			return "/admin/coupons";
		} else if (search.equals("name")) {
			if (keyword.equals("")) {
				model.addAttribute("success", "Vui lòng nhập dữ liệu trước khi tìm !!! ");
				model.addAttribute("isName", true);
				return "/admin/coupons";
			}
			try {
				Integer.parseInt(keyword);
				model.addAttribute("success", "Tên giảm giá phải là ký tự !!! ");
				model.addAttribute("isName", true);
				return "/admin/coupons";
			} catch (Exception e) {
			}
			coupons = dao.findByCouponName("%" + keyword + "%", pageable);
			if (coupons.getTotalPages() > 0) {
				model.addAttribute("coupons", coupons);
				model.addAttribute("success", "Đã tìm thấy tên giảm giá có chứa : " + keyword);
				model.addAttribute("isName", true);
			} else {
				model.addAttribute("success", "Không tìm thấy giảm giá có tên " + keyword);
			}
		} else if (search.equals("select")) {
			model.addAttribute("success", "Chúng tôi chưa biết bạn tìm gì !!!");
			return "/admin/coupons";
		} else if (search.equals("cd")) {
			Date date = null;
			try {
				date = paramService.getDate2(keyword, "yyyy-MM-dd");
			} catch (Exception e) {
				model.addAttribute("success", "Không đúng định dạng năm - tháng - ngày !!!");
				model.addAttribute("isCd", true);
				return "/admin/coupons";
			}
			coupons = dao.findByCreatedDate(date, pageable);
			if (coupons.getTotalPages() > 0) {
				model.addAttribute("coupons", coupons);
				model.addAttribute("success", "Đã tìm thấy ngày tạo: " + keyword);
				model.addAttribute("isCd", true);
			} else {
				model.addAttribute("success", "Không tìm thấy ngày tạo là: " + keyword);
			}
		}

		model.addAttribute("field", field.orElse(defaultField));
		model.addAttribute("eop", eop.orElse(defaultElementOfPage));
		model.addAttribute("p", p.orElse(defaultPage));
		model.addAttribute("d", direc.orElse(true));
		model.addAttribute("coupons", coupons);
		return "/admin/coupons";
	}

	@GetMapping("add")
	public String add(Coupon coupon) {
		return "/admin/coupons-add";
	}

	@GetMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Coupon coupon = dao.findById(id).get();
		model.addAttribute("coupon", coupon);
		return "/admin/coupons-update";
	}

	@PostMapping("update")
	public String update(Model model, @Validated @ModelAttribute("coupon") Coupon coupon, BindingResult result) {
		if (result.hasErrors()) {
			return "/admin/coupons-update";
		} else if (coupon.getExpirationDate().before(coupon.getCreatedDate())) {
			model.addAttribute("sussces2", "Ngày hết hạn phải trước hơn ngày bắt đầu !!!");
			return "/admin/coupons-update";
		}else if (coupon.getCreatedDate().after(coupon.getExpirationDate())) {
			model.addAttribute("sussces2", "Ngày bắt đầu không được trước ngày hết hạn !!!");
			return "/admin/coupons-update";
		}else if (coupon.getExpirationDate().after(coupon.getCreatedDate())) {
			model.addAttribute("sussces2", "Ngày bắt đầu không thể trước ngày hết hạn !!!");
			return "/admin/coupons-update";
		}else if (coupon.getExpirationDate().before(new Date())) {
			model.addAttribute("sussces", "Ngày hết hạn phải nhỏ ngày hiện tại !!!");
			return "/admin/coupons-update";
		} else {
			dao.save(coupon);
			model.addAttribute("success", "Cập nhật giảm giá thành công");
		}

		return "/admin/coupons";
	}

	@PostMapping("create")
	public String create(Model model, @Validated @ModelAttribute("coupon") Coupon coupon, BindingResult result) {
		if (result.hasErrors()) {
			return "/admin/coupons-add";
		} else if (coupon.getExpirationDate().before(coupon.getCreatedDate())) {
			model.addAttribute("sussces", "Ngày hết hạn phải lớn hơn ngày bắt đầu !!!");
			return "/admin/coupons-add";
		}else if (coupon.getExpirationDate().before(new Date())) {
			model.addAttribute("sussces", "Ngày hết hạn phải nhỏ ngày hiện tại !!!");
			return "/admin/coupons-add";
		} else {
			dao.save(coupon);
			model.addAttribute("success", "Thêm giảm giá thành công");
		}

		return "/admin/coupons";
	}

	@RequestMapping("search")
	public String searchCoupon(@RequestParam("keyword") String keyword, @RequestParam("search") String search) {
		return "forward:/admin/coupon";
	}

	@PostMapping("filter")
	public String search(Model model, @RequestParam("status") String status, @RequestParam("p") Optional<Integer> p,
			@RequestParam("eop") Optional<Integer> eop, @RequestParam("field") Optional<String> field,
			@RequestParam("d") Optional<Boolean> direc) {
		int defaultPage = 0;
		int defaultElementOfPage = 3;
		String defaultField = "expirationDate";

		// asending is default
		Pageable pageable = PageRequest.of(p.orElse(defaultPage), eop.orElse(defaultElementOfPage),
				Sort.by(field.orElse(defaultField)).ascending());

		if (direc.isPresent() && !direc.get().booleanValue()) {
			pageable = PageRequest.of(p.orElse(defaultPage), eop.orElse(defaultElementOfPage),
					Sort.by(field.orElse(defaultField)).descending());
		}

		if (status.equals("active")) {
			Page<Coupon> coupons = dao.findByActivated(true, pageable);
			model.addAttribute("coupons", coupons);
			model.addAttribute("isActive", true);
			model.addAttribute("success", "Đã tìm thấy giảm giá có trạng thái là Hoạt động");
		} else if (status.equals("inactive")) {
			Page<Coupon> coupons = dao.findByActivated(false, pageable);
			model.addAttribute("coupons", coupons);
			model.addAttribute("isInactive", true);
			model.addAttribute("success", "Đã tìm thấy giảm giá có trạng thái là Không hoạt động");
		} else if (status.equals("select")) {
			model.addAttribute("success", "Chúng tôi chưa biết bạn lọc gì !!!");
			return "/admin/coupons";
		}
		model.addAttribute("isHide", true);
		return "/admin/coupons";
	}
}
