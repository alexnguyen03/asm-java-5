package com.poly.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Product;

public interface ProductDAO extends JpaRepository<Product, Integer> {
	// Select Top 10 product
	@Query("SELECT p " + "FROM Product p " + "JOIN OrderDetail od ON p.id = od.product.id " + "GROUP BY p "
			+ "ORDER BY COUNT(od.id) DESC LIMIT 10")
	List<Product> findTop10BestSellingProducts();

	// Select by price between
	Page<Product> findByPriceBetween(double minPrice, double maxPrice, Pageable pageable);

	// Select By Category name like
	@Query("SELECT p FROM Product p WHERE p.category.name like ?1")
	Page<Product> findByCategoryNameLike(String name, Pageable pageable);

	// DSL Select By Name
	Page<Product> findByNameLike(String name, Pageable pageable);

	// SELECT All by price sort like
	@Query("SELECT p FROM Product p ORDER BY p.price ASC")
	Page<Product> findByPriceSortASC(Pageable pageable);

	// SELECT All by price sort like
	@Query("SELECT p FROM Product p ORDER BY p.price DESC")
	Page<Product> findByPriceSortDESC(Pageable pageable);

	// ******************** SORT AREA ********************
	// Sort

	@Query("SELECT c FROM Product c WHERE c.category.id = ?1")
	List<Product> findByProductCategogy(String id);

}