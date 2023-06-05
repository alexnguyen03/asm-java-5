package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.model.Product;
import com.poly.repository.ProductDAO;

@Controller
@RequestMapping("/admin")
public class ProductManagementController {
    @Autowired
    ProductDAO productDAO;

    @GetMapping("/product-manager")
    public String getProductManager() {
        List<Product> products = productDAO.findAll();
        for (Product product : products) {
            System.out.println(product.getName());
        }
        return "admin/productManager";
    }
}
