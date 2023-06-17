package com.poly.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.OrderDetail;
import com.poly.model.ReportByCategory;
import com.poly.model.ReportByProduct;
import com.poly.model.ReportByUser;
import com.poly.model.ReportTop10;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long> {
    @Query("SELECT   new ReportTop10( o.product.name, o.product.category.name , sum(o.price), count(o.quantity)) FROM OrderDetail o GROUP BY o.product.name, o.product.category.name, o.price")
    public List<ReportTop10> getInventoryTop();

    @Query("SELECT  new ReportByCategory( o.product.category.name , count(o.quantity), sum(o.price)) FROM OrderDetail o GROUP BY  o.product.category.name")
    public List<ReportByCategory> getReportByCategories();

    @Query("SELECT  new ReportByProduct( o.product.name ,  o.product.category.name, count(o.quantity), sum(o.price) ) FROM OrderDetail o GROUP BY  o.product.name,  o.product.category.name ORDER BY sum(o.price) ")
    public List<ReportByProduct> getReportByProducts();

    @Query("SELECT  new ReportByUser( o.account.fullname ,  o.address, count(o.id), sum(o.totalPrice)) FROM Order o GROUP BY   o.account.fullname ,  o.address ORDER BY sum(o.totalPrice)")
    public List<ReportByUser> getReportByUsers();
}
