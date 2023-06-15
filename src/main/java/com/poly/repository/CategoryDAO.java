package com.poly.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.model.Category;

public interface CategoryDAO extends JpaRepository<Category, String> {

}
