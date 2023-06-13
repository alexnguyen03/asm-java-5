package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.Order;
import com.poly.model.OrderDetail;
import com.poly.repository.OrderDAO;
import com.poly.repository.OrderDetailDAO;

@Controller
@RequestMapping("shop")
public class OrderHistoryController {
	@Autowired
	OrderDAO orderDao;
	@Autowired
	OrderDetailDAO orderDetailDao;

	@GetMapping("order-history")
	public String index(Model model) {
		List<Order> orders = orderDao.findByAccountName("Alexx");
		model.addAttribute("orders", orders);
		model.addAttribute("pageActive", "order-history");
		model.addAttribute("activeTab", false);
		return "/client/order-history";
	}
}
