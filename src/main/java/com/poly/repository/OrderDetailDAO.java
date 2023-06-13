package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.OrderDetail;
import com.poly.model.Product;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long> {
}
