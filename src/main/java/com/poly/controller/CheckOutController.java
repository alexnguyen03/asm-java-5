package com.poly.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

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
	@Autowired
	CartDAO cartDAO;

	@GetMapping("")
	public String index(Model model) {
//		Cart cart = cartDAO.findById(1).get();
//		sessionService.set("cart", cart.getCartDetails());
//
//		Account account = accountDAO.findById("hoainam").get();
//		sessionService.set("account", account);

		//lấy coupon và kiểm tra có trong database không
		String couponId = paramService.getString("couponId", "");
		try {
			Coupon coupon = couponDAO.findById(couponId).get();
			sessionService.set("coupon", coupon);
			model.addAttribute("discountAmount", coupon.getDiscountAmount());
		} catch (Exception e) {
			System.out.println("Không có coupon");
			sessionService.remove("coupon");
			model.addAttribute("discountAmount", 0);
		}
		
		//lấy account
		Account account = sessionService.get("account");
		
		//lấy product
		List<CartDetail> ODL = sessionService.get("cart");
		
		
		//tính tổng tiền
		double toTal_Price = 0;
		for (CartDetail od : ODL) {
			double toTal = od.getProduct().getPrice() * od.getQuantity();
			toTal_Price += toTal;
		}
		
		model.addAttribute("cartDetails", ODL);
		model.addAttribute("provisional", toTal_Price);
		model.addAttribute("account", account);
		return "/client/checkout";
	}

	@PostMapping("/create")
	public String checkout() {
		//Order
		Order order = new Order();
		double toTal_Price = 0;
		List<CartDetail> ODL = sessionService.get("cart");
		for (CartDetail od : ODL) {
			double toTal = od.getProduct().getPrice() * od.getQuantity();
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
		orderDAO.save(order);
		sessionService.remove("coupon");
		//OrderDetail
		for (CartDetail od : ODL) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setOrder(order);
			orderDetail.setProduct(od.getProduct());
			orderDetail.setPrice(od.getProduct().getPrice());
			orderDetail.setQuantity(od.getQuantity());
			orderDetailDAO.save(orderDetail);
			
			int productId = od.getProduct().getId();
			cartDetailDAO.deleteByProductId(productId);
		}
		return "redirect:/shop/checkout";
	}

//	@PostMapping("/coupon")
//	public String getCoupon() {
//		String couponId = paramService.getString("couponId", "");
//		try {
//			Coupon coupon = couponDAO.findById(couponId).get();
//			sessionService.set("coupon", coupon);
//		} catch (Exception e) {
//			System.out.println("Không có coupon");
//			sessionService.remove("coupon");
//		}
//		return "redirect:/shop/checkout";
//	}
}
