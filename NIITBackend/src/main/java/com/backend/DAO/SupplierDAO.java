package com.backend.DAO;

import java.util.List;

import com.backend.model.Supplier;

public interface SupplierDAO 
{
	public boolean saveSupplier(Supplier s);
	public  List getAllSupplier();
}
