package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.CartDetail;

public interface CartDetailDAO extends JpaRepository<CartDetail, Integer> {
	List<CartDetail> findAllByCartId(Integer cartId);

}