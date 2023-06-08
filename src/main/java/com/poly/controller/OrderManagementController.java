package com.poly.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.model.Order;
import com.poly.repository.OrderDAO;
import com.poly.service.SessionService;

@Controller
@RequestMapping("/admin")
public class OrderManagementController {
    @Autowired
    OrderDAO orderDAO;
    @Autowired
    SessionService sessionService;

    @GetMapping("order")
    public String orderManagementView(Model m) {
        m.addAttribute("title", "QUẢN LÝ ĐƠN HÀNG");
        m.addAttribute("pageActive", "order");
        List<Order> orders = orderDAO.findAll();
        m.addAttribute("orders", orders);
        if (sessionService.get("isUpdated") != null) {
            m.addAttribute("isUpdated", true);
            sessionService.remove("isUpdated");
        }
        return "/admin/order";
    }

    @PostMapping("order")
    public String updateStatus(@RequestParam("id") Long id, @RequestParam("status") String status,
            @RequestParam("notes") Optional<String> notes) {
        System.out.println(id + " " + status);
        Order order = orderDAO.findById(id).get();
        if (status.equals("H")) {
            order.setNotes(notes.get());
        }
        order.setStatus(status);
        orderDAO.save(order);
        sessionService.set("isUpdated", true);
        return "redirect:/admin/order";
    }

    @GetMapping("/order/cancel")
    public String orderCancelView(Model m) {
        m.addAttribute("isCancel", true);
        return "/admin/order";
    }

    // ModelAttribute
    @ModelAttribute("listStatus")
    public Map<String, String> listStatus() {
        Map<String, String> map = new HashMap<>();
        map.put("C", "Đang chờ");
        map.put("XL", "Đang xử lý");
        map.put("G", "Đang giao");
        map.put("DG", "Đã giao");
        map.put("H", "Hủy");
        return map;
    }
}
