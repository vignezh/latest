package com.vic.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vic.model.Cart;
import com.vic.model.MainCart;
import com.vic.model.PlaceOrder;
import com.vic.model.UserDetails;

@Repository
public class CartDAOImpl implements CartDAO {
	@Autowired
	SessionFactory sf;

	/*@Override
	public void add(Cart ct, String usname) {
		List<UserDetails> udl = sf.getCurrentSession().createQuery("from UserDetails where user_name='" + usname + "'")
				.list();
		System.out.println("okay");
		for (int i = 0; i < udl.size(); i++) {
			UserDetails d = (UserDetails) udl.get(i);
			d.setCt(ct);
		}
		System.out.println("making to add the product");
		sf.getCurrentSession().save(ct);
		System.out.println("added the item");
	}*/

	@Override
	public void update(Cart ct) {
		sf.getCurrentSession().update(ct);
	}

	@Override
	public Cart getProductById(int id) {
		System.out.println((Cart) sf.getCurrentSession().get(Cart.class, id));
		return (Cart) sf.getCurrentSession().get(Cart.class, id);
	}

	@Override
	public void delete(int id) {
		System.out.println("Item Delete");
		sf.getCurrentSession().delete(getProductById(id));
	}

	@Override
	public List<Cart> getAllProduct(String username) {
		System.out.println("getting all product");
		return sf.getCurrentSession().createQuery("from Cart where USERNAME='"+username+"'").list();
	}

	public void add(Cart ct) {
		// TODO Auto-generated method stub
		System.out.println("making to add the product");
		sf.getCurrentSession().save(ct);
		System.out.println("added the item");
	}

	/*@Override public void save(Cart cart) 
	{ // TODO Auto-generated method
	  stub sf.getCurrentSession().save(cart); 
	}*/

	@Override
	public void save(MainCart maincart) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().save(maincart);
	}

	@Override
	public List<MainCart> getmaincart(int sid) {
		// TODO Auto-generated method stub
		return (List<MainCart>) sf.getCurrentSession().createQuery("from MainCart where SHIPID='"+sid+"'").list();
	}

	@Override
	public void saveorder(PlaceOrder pc) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().save(pc);
	}

	@Override
	public void deletecart(String username) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().createQuery("delete from Cart where USERNAME='"+username+"'").executeUpdate();
	}

	@Override
	public List getorder(String username) {
		// TODO Auto-generated method stub
		System.out.println("before");
		return sf.getCurrentSession().createQuery("from PlaceOrder where ORDERID='"+username+"'").list();
	}

}