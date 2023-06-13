package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Product;
import com.poly.model.ReportTop10;

public interface ProductDAO extends JpaRepository<Product, Integer> {
	@Query("SELECT c FROM Product c WHERE c.category.id = ?1")
	List<Product> findByProductCategogy(String id);
}
