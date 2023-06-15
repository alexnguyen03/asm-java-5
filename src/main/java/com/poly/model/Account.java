package com.poly.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "Accounts")
public class Account implements Serializable {
	@Id
	private String username;
	private String password;
	private String fullname;
	private String email;
	private String photo;
	private Boolean activated;
	private Boolean admin;
	@OneToMany(mappedBy = "account")
	private List<Order> orders;
	@OneToMany(mappedBy = "account")
	private List<Review> reviews;
	@OneToMany(mappedBy = "account")
	private List<Cart> carts;
	@Override
	public String toString() {
		return "Account [username=" + username + "]";
	}
	
	
}