package com.poly.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.model.Account;

public interface AccountDAO extends JpaRepository<Account, String> {
//	Find Account
	Account findUserByUsername(String username);
}
