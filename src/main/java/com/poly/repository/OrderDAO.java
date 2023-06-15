package com.poly.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Order;

public interface OrderDAO extends JpaRepository<Order, Long> {
	@Query("SELECT c FROM Order c WHERE c.account.username = ?1")
	List<Order> findByAccountName(String name);
	
	@Query("SELECT c FROM Order c WHERE c.createDate = ?1")
	List<Order> findByCreatedDate(Date ngayDat);
	
	@Query("SELECT c FROM Order c WHERE c.id LIKE ?1")
	List<Order> findByID(Long id);
	
	@Query("SELECT c FROM Order c WHERE c.status = ?1")
	List<Order> findByStatus(String status);
}
