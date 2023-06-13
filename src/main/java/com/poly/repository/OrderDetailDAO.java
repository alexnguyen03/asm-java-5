package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.OrderDetail;
import com.poly.model.ReportTop10;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long> {
    @Query("SELECT  new ReportTop10( o.product.name, o.product.category.name , sum(o.price), count(o.quantity)) FROM OrderDetail o GROUP BY o.product.name, o.product.category.name, o.price")
    public List<ReportTop10> getInventoryTop();
}
