package com.poly.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
@Entity
@Table(name = "Accounts")
public class Account implements Serializable {
	@Id
	private String username;
	
	@NotBlank(message = "{NotBlank.account.password}")
	@Size(min = 5, max = 10, message = "{Size.account.password}")
	private String password;
	
	@NotBlank(message = "{NotBlank.account.fullname}")
	private String fullname;
	
	@NotBlank(message = "{NotBlank.account.email}")
	@Email(message = "{Email.account.email}")
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