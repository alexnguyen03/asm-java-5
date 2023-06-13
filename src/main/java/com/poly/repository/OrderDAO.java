package com.poly.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Order;

public interface OrderDAO extends JpaRepository<Order, Long> {
    @Query("SELECT o FROM Order o WHERE  o.status != 'H' ")
    Page<Order> findOrderActive(Pageable pageable);

    // DSL
    List<Order> findAllByStatusNotLike(String key, Pageable pageable);

    List<Order> findAllByStatusLike(String key);

    @Query("SELECT o FROM Order o WHERE  MONTH(o.createDate) = ?1 and YEAR(o.createDate) = ?2 and o.status != 'H'  ")
    Page<Order> findAllByCreateddateMonth(int month, int year, Pageable pageable);

    @Query("SELECT o FROM Order o WHERE  DAY(o.createDate) = ?1 and  MONTH(o.createDate) = ?2 and YEAR(o.createDate) = ?3 and o.status != 'H'  ")
    Page<Order> findAllByCreateddateDate(int date, int month, int year, Pageable pageable);

    Order findByAccountUsername(String uname);

}
