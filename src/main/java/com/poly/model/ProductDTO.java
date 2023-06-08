package com.poly.model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDTO {
	@Id
	Serializable group;
	private Integer id;
	private String name;
	private String image;
	private Double price;
}
