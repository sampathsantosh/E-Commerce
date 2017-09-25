package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component

public class Product {
	
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String description;
	private float price;
	/*public Product(){
		
	}
	public Product(String name, String description, float price, Category category){
		this.name=name;
		this.description=description;
		this.price=price;
		this.category=category;
	
	}*/
	@Id
	@Column(name="PRODUCT_ID")
	@GeneratedValue
	public int getId(){
		return id;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getPrice() {
		return price;
	}
}
