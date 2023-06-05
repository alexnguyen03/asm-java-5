package com.poly.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "Coupons")
public class Coupon {
    @Id
    @Column(name = "coupon_code")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String code;
    @Column(name = "discount_amount")
    Double discountAmount;
    @Column(name = "expiration_date")
    Date exprirationDate;
    Boolean actived;
    @Column(name = "coupon_name")
    String name;
    @ManyToOne
    @JoinColumn(name = "order_id")
    Order order;
}
