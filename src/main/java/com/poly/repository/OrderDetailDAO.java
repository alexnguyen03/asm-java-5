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
    @Query("SELECT   new ReportTop10( o.product.name, o.product.category.name , sum(o.price * o.quantity), sum(o.quantity)) FROM OrderDetail o WHERE o.order.status = 'DG' GROUP BY o.product.name, o.product.category.name")
    public List<ReportTop10> getTopProduct();

    @Query("SELECT   new ReportTop10( o.product.name, o.product.category.name , sum(o.price * o.quantity), sum(o.quantity)) FROM OrderDetail o WHERE DAY(o.order.createDate) = ?1 and  MONTH(o.order.createDate) = ?2 and YEAR(o.order.createDate) = ?3 AND o.order.status = 'DG' GROUP BY o.product.name, o.product.category.name")
    public List<ReportTop10> getTopProductByDate(int date, int month, int year);

    @Query("SELECT   new ReportTop10( o.product.name, o.product.category.name , sum(o.price * o.quantity), sum(o.quantity)) FROM OrderDetail o WHERE   WEEK(o.order.createDate) = ?1 and YEAR(o.order.createDate) = ?2 AND o.order.status = 'DG' GROUP BY o.product.name, o.product.category.name")
    public List<ReportTop10> getTopProductByWeek(int week, int year);

    @Query("SELECT   new ReportTop10( o.product.name, o.product.category.name , sum(o.price * o.quantity), sum(o.quantity)) FROM OrderDetail o WHERE   MONTH(o.order.createDate) = ?1 and YEAR(o.order.createDate) = ?2 AND o.order.status = 'DG' GROUP BY o.product.name, o.product.category.name")
    public List<ReportTop10> getTopProductByMonth(int month, int year);

    @Query("SELECT   new ReportTop10( o.product.name, o.product.category.name , sum(o.price * o.quantity), sum(o.quantity)) FROM OrderDetail o WHERE YEAR(o.order.createDate) = ?1 AND o.order.status = 'DG' GROUP BY o.product.name, o.product.category.name")
    public List<ReportTop10> getTopProductByYear(int year);

    @Query("SELECT  new ReportByCategory( o.product.category.name , count(o.quantity), sum(o.price)) FROM OrderDetail o GROUP BY  o.product.category.name")
    public List<ReportByCategory> getReportByCategories();

    @Query("SELECT  new ReportByProduct( o.product.name ,  o.product.category.name, count(o.quantity), sum(o.order.totalPrice) ) FROM OrderDetail o GROUP BY  o.product.name,  o.product.category.name ORDER BY sum(o.order.totalPrice) ")
    public List<ReportByProduct> getReportByProducts();

    @Query("SELECT  new ReportByUser( o.account.fullname ,  o.address, count(o.id), sum(o.totalPrice)) FROM Order o GROUP BY   o.account.fullname ,  o.address ORDER BY sum(o.totalPrice)")
    public List<ReportByUser> getReportByUsers();
}
