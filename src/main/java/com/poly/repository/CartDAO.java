package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Cart;
import com.poly.model.CartDetail;

public interface CartDAO extends JpaRepository<Cart, Integer> {
    @Query("SELECT o FROM Cart o WHERE o.account.username =  ?1")
    Cart findByUsername(String username);

}