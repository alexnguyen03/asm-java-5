package com.poly.controller;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.Order;
import com.poly.model.Product;
import com.poly.repository.OrderDAO;
import com.poly.repository.ProductDAO;
import com.poly.service.SessionService;

@Controller
@RequestMapping("/admin")
public class AdminIndexController {
	@Autowired
	OrderDAO orderlDAO;

	@Autowired
	ProductDAO productDAO;

	@Autowired
	OrderDAO orderDAO;

	@Autowired
	SessionService session;

	@RequestMapping("")
	public String index(Model model) {

		session.set("stateAdmin", "adminRole");

		model.addAttribute("isPageActive", "index");
		model.addAttribute("orderXLCount", orderlDAO.findByStatus("C").size());

//		SELECT PRODUCT NEWEST TODAY
		Date start = Date.from(LocalDate.now().atStartOfDay(ZoneId.systemDefault()).toInstant());
		Date end = Date.from(LocalDate.now().atTime(LocalTime.MAX).atZone(ZoneId.systemDefault()).toInstant());
		List<Product> products = productDAO.findByCreateDateBetween(start, end);
		model.addAttribute("productNewsetToday", products.size());

//        SELECT All REvenue
		Double totalRevenue = orderDAO.getTotalRevenue();
		model.addAttribute("totalRevenue", totalRevenue);

//        SELECT Revenue from 1 month past
		LocalDate endDate = LocalDate.now(); // Ngày hiện tại
		LocalDate startDate = endDate.minusMonths(1); // 1 tháng trước
		Date startMonthPast = Date.from(startDate.atStartOfDay(ZoneId.systemDefault()).toInstant());
		Date endMonthPast = Date.from(endDate.atStartOfDay(ZoneId.systemDefault()).toInstant());
//		System.out.println(startMonthPast);
//		System.out.println(endMonthPast);
		Double totalRevenueMonthPast = orderDAO.getTotalRevenueByMonth(startMonthPast, endMonthPast);
		if (totalRevenueMonthPast == null) {
			totalRevenueMonthPast = 0.0;
		}
		model.addAttribute("totalRevenueMonthPast", totalRevenueMonthPast);

//		SELECT ALL SOLD PRODUCT IN DAY
		LocalDate today = LocalDate.now();
		Date startDateSold = Date.from(today.atStartOfDay(ZoneId.systemDefault()).toInstant());
		Date endDateSold = Date.from(today.plusDays(1).atStartOfDay(ZoneId.systemDefault()).toInstant());
		Long totalProductsSoldToday = orderDAO.countProductsSoldByDate(startDateSold, endDateSold);
		System.out.println(totalProductsSoldToday);
		model.addAttribute("totalProductsSoldToday", totalProductsSoldToday);

//		Lastest Order 
//		List<Product> latestOrders = orderDAO.findLastestOrder(PageRequest.of(0, 10));
//		System.out.println(latestOrders);
//		model.addAttribute("latestOrders", latestOrders);
		return "/admin/index";
	}
}
