package com.poly.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.model.Product;

public interface ProductDAO extends JpaRepository<Product, Integer> {

}
