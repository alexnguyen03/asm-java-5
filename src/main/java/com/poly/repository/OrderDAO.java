package com.poly.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.model.Account;
import com.poly.model.Order;

public interface OrderDAO extends JpaRepository<Order, Long> {

}
