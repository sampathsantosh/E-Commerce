package com.backend.DAO;


import com.backend.model.Product;

public interface ProductDAO 
{
	public boolean createProduct(Product p);
	
	public boolean getProduct(int id);
	
	public boolean updateProduct(Product p);
	
	public boolean deleteProduct(int id);
}