package com.vic.service;

import java.util.List;

import com.vic.model.Cart;
import com.vic.model.MainCart;
import com.vic.model.PlaceOrder;

public interface CartService {

	public void add(Cart cart);

	public List getAllProduct(String username);

	public Cart getProductById(int id);

	public void update(Cart ct);

	public void delete(int id);

	public void save(MainCart maincart);

	public List<MainCart> getmaincart(int sid);

	public void saveorder(PlaceOrder pc);

	public void deletecart(String username);

	public List getorder(String username);

}
