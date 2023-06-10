package com.poly.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Product;
import com.poly.model.ProductDTO;

public interface ProductDAO extends JpaRepository<Product, Integer> {
//	Select Top 10 product 
	@Query("SELECT NEW ProductDTO(p.id, p.name,p.image ,p.price, SUM(od.quantity)) " + "FROM Product p "
			+ "JOIN p.orderDetails od " + "GROUP BY p.id, p.name,p.image ,p.price " + "ORDER BY SUM(od.quantity) DESC")
	List<ProductDTO> findTop10BestSellingProducts();

	// Select by price between
	List<Product> findByPriceBetween(Double minPrice, Double maxPrice);

	// DSL Select By Name
	Page<Product> findByNameLike(String name, Pageable pageable);
}