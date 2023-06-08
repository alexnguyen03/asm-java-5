package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Product;
import com.poly.model.ProductDTO;

public interface ProductDAO extends JpaRepository<Product, Integer> {
	@Query("SELECT NEW ProductDTO(p.id, p.name,p.image ,p.price, SUM(od.quantity)) " + "FROM Product p "
			+ "JOIN p.orderDetails od " + "GROUP BY p.id, p.name,p.image ,p.price " + "ORDER BY SUM(od.quantity) DESC")
	List<ProductDTO> findTop10BestSellingProducts();
}