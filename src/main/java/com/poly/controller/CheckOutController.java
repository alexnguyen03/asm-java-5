package com.poly.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.Account;
import com.poly.model.Cart;
import com.poly.model.CartDetail;
import com.poly.model.Coupon;
import com.poly.model.Order;
import com.poly.model.OrderDetail;
import com.poly.model.Product;
import com.poly.repository.AccountDAO;
import com.poly.repository.CartDAO;
import com.poly.repository.CartDetailDAO;
import com.poly.repository.CouponDAO;
import com.poly.repository.OrderDAO;
import com.poly.repository.OrderDetailDAO;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
@RequestMapping("shop/checkout")
public class CheckOutController {
	@Autowired
	OrderDAO orderDAO;
	@Autowired
	OrderDetailDAO orderDetailDAO;
	@Autowired
	SessionService sessionService;
	@Autowired
	ParamService paramService;
	@Autowired
	AccountDAO accountDAO;
	@Autowired
	CouponDAO couponDAO;
	@Autowired
	CartDetailDAO cartDetailDAO;

	@RequestMapping("")
	public String index(Model model) {
		Order order = orderDAO.findById((long) 1).get();
		sessionService.set("cart", order.getOrderDetails());
		Account account = accountDAO.findById("hoainam").get();
		sessionService.set("account", account);

		// String couponId = paramService.getString("couponId", "");
		// try {
		// Coupon coupon = couponDAO.findById(couponId).get();
		// sessionService.set("coupon", coupon);
		// model.addAttribute("discountAmount", coupon.getDiscountAmount());
		// } catch (Exception e) {
		// System.out.println("Không có coupon");
		// sessionService.remove("coupon");
		// model.addAttribute("discountAmount", 0);
		// }

		Account account2 = sessionService.get("account");
		model.addAttribute("account", account2);
		return "/client/checkout";
	}

	@PostMapping("/create")
	public String checkout() {
		// Order
		Order order = new Order();
		double toTal_Price = 0;
		List<OrderDetail> ODL = sessionService.get("cart");
		for (OrderDetail od : ODL) {
			double toTal = od.getPrice() * od.getQuantity();
			toTal_Price += toTal;
		}
		String phone = paramService.getString("phone", "");
		String address = paramService.getString("address", "");
		Account account = sessionService.get("account");
		Coupon coupon = sessionService.get("coupon");
		double discountAmount = coupon.getDiscountAmount();
		order.setCoupon(coupon);
		order.setAccount(account);
		order.setPhone(phone);
		order.setAddress(address);
		order.setTotalPrice(toTal_Price - discountAmount);
		order.setStatus("Đang xử lý");
		// orderDAO.save(order);
		sessionService.remove("coupon");
		// OrderDetail
		for (OrderDetail od : ODL) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setOrder(order);
			orderDetail.setProduct(od.getProduct());
			orderDetail.setPrice(od.getPrice());
			orderDetail.setQuantity(od.getQuantity());
			// orderDetailDAO.save(orderDetail);

			int productId = od.getProduct().getId();
			System.out.println(productId);
			// cartDetailDAO.deleteByProductId(productId);
		}
		return "redirect:/shop/checkout";
	}

	// @PostMapping("/coupon")
	// public String getCoupon() {
	// String couponId = paramService.getString("couponId", "");
	// try {
	// Coupon coupon = couponDAO.findById(couponId).get();
	// sessionService.set("coupon", coupon);
	// } catch (Exception e) {
	// System.out.println("Không có coupon");
	// sessionService.remove("coupon");
	// }
	// return "redirect:/shop/checkout";
	// }
}
