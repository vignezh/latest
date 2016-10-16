package com.vic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vic.dao.CartDAO;
import com.vic.model.Cart;
import com.vic.model.MainCart;
import com.vic.model.PlaceOrder;

@Service
@Transactional
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAO cartdao;

	@Transactional
	public void add(Cart ct) {
		cartdao.add(ct);
	}

	@Transactional
	public List getAllProduct(String username) {
		return cartdao.getAllProduct(username);
	}

	@Transactional
	public Cart getProductById(int id) {
		return cartdao.getProductById(id);
	}

	@Transactional
	public void update(Cart cart) {
		cartdao.update(cart);
	}

	@Transactional
	public void delete(int id) {
		cartdao.delete(id);
	}

	/*
	 * @Override public void save(Cart cart) { // TODO Auto-generated method
	 * stub cartdao.save(cart); }
	 */

	@Override
	public void save(MainCart maincart) {
		// TODO Auto-generated method stub
		cartdao.save(maincart);
	}

	@Override
	public List<MainCart> getmaincart(int sid) {
		// TODO Auto-generated method stub
		return cartdao.getmaincart(sid);
	}

	@Override
	public void saveorder(PlaceOrder pc) {
		// TODO Auto-generated method stub
		cartdao.saveorder(pc);
	}

	@Override
	public void deletecart(String username) {
		// TODO Auto-generated method stub
		cartdao.deletecart(username);
	}

	@Override
	public List getorder(String username) {
		// TODO Auto-generated method stub
		return cartdao.getorder(username);
	}

}
