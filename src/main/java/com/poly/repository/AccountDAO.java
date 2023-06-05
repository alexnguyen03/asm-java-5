package com.poly.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.model.Account;

public interface AccountDAO extends JpaRepository<Account, String> {

}
