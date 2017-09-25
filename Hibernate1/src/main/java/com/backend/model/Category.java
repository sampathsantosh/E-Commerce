package com.backend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Category 
{
	@Id
	@Column(name = "CateId")
	@GeneratedValue
	private int id;
	private String CategoryName,CategoryDescription;

	public String getCategoryName() {
		return CategoryName;
	}

	public void setCategoryName(String categoryName) {
		CategoryName = categoryName;
	}

	public String getCategoryDescription() {
		return CategoryDescription;
	}

	public void setCategoryDescription(String categoryDescription) {
		CategoryDescription = categoryDescription;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
}
