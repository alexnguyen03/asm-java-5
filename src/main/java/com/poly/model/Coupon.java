package com.poly.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@Data
@Entity
@Table(name = "Coupons")
public class Coupon implements Serializable {
    @Id
    @Column(name = "coupon_code")
    String couponCode;
    @Column(name = "discount_amount")
    Double discountAmount;
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "expiration_date")
    Date expirationDate;
    Boolean activated;
    @Column(name = "coupon_name")
    String couponName;
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "created_date")
    Date createdDate = new Date();
    @OneToMany(mappedBy = "coupon")
    private List<Order> order;
}
