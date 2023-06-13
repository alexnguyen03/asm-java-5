package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Order;
import com.poly.model.Product;

public interface OrderDAO extends JpaRepository<Order, Long> {
	@Query("SELECT c FROM Order c WHERE c.account.username = ?1")
	List<Order> findByAccountName(String name);
}
