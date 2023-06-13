package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.poly.model.CartDetail;
import com.poly.model.Order;
import com.poly.model.OrderDetail;
import com.poly.model.Product;

public interface CartDetailDAO extends JpaRepository<CartDetail, Integer> {
	@Modifying
	@Transactional
	@Query("DELETE FROM CartDetail WHERE product.id = :productId")
    void deleteByProductId(@Param("productId") Integer productId);
}
