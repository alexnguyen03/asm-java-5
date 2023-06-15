package com.poly.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.model.Category;
import com.poly.model.Product;

public interface ProductDAO extends JpaRepository<Product, Integer> {
	// ******************** SELECT AREA ********************

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

	// ******************** SORT AREA ********************
	// SELECT All by price sort like
	@Query("SELECT p FROM Product p ORDER BY p.price ASC")
	Page<Product> findByPriceSortASC(Pageable pageable);

	// SELECT All by price sort like
	@Query("SELECT p FROM Product p ORDER BY p.price DESC")
	Page<Product> findByPriceSortDESC(Pageable pageable);

	// ******************** Filter AREA ********************
	// Select by avaiable
	@Query("SELECT p FROM Product p WHERE p.available = :isAvailable")
	Page<Product> findProductsByAvailability(@Param("isAvailable") boolean isAvailable, Pageable pageable);

	// select by category
	@Query("SELECT p FROM Product p WHERE p.category.id like ?1")
	Page<Product> findProductsByCategory(String categoryId, Pageable pageable);
}