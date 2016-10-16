package com.vic.handler;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.vic.controller.CartController;
import com.vic.model.Cart;
import com.vic.model.MainCart;
import com.vic.model.PlaceOrder;
import com.vic.model.Shipping;
import com.vic.model.UserDetails;
import com.vic.service.CartService;
import com.vic.service.ShipService;

@Component
public class CheckoutHandler {
	@Autowired
	HttpServletRequest re;
	
	@Autowired
	CartController cc;

	public Shipping startFlow() {
		System.out.println("flow started");
		return new Shipping();
	}

	@Autowired
	CartService cs;
	@Autowired
	ShipService shipservice;

	public void save1(Shipping shipment) {
		String uname;
		Authentication auth1 = SecurityContextHolder.getContext().getAuthentication();
		String name = auth1.getName();
		HttpSession ses = re.getSession();
		ses.setAttribute("u", name);
		uname = (String) ses.getAttribute("u");
		UserDetails userDetails = new UserDetails();
		userDetails.setUser_name(uname);
		shipment.setUserDetails(userDetails);
		int id = shipment.getShipid();
		shipservice.saveOrUpdate(shipment);
	}

	public void save2(Shipping shipment) {
		MainCart cart = new MainCart();
		String username=cc.getusername();
		List<Cart> cartitems = cs.getAllProduct(username);
		double total = 0;
		for (int i = 0; i < cartitems.size(); i++) {
			total = (total + cartitems.get(i).getTotal());
		}
		cart.setGrandTotal(total);
		for(int j=0;j<cartitems.size();j++){
			cart.setProduct(cartitems.get(j).getProduct());
			cart.setQuantity(cartitems.get(j).getQuantity());
			cart.setTotalprize(cartitems.get(j).getTotal());
			cart.setShippingdetails(shipment);
			cs.save(cart);
		}
	//	int shid = shipment.getShipid();
	//	cart.setUsd(shipment.getUserDetails());
	//	cart.setShipdetail(shipservice.getbyid(shid));

		for (int j = 0; j < cartitems.size(); j++) {
			int id = cartitems.get(j).getId();
			Cart carts = cs.getProductById(id);
	//		cart.setCartID(carts);
			
		}
		
	}
	public void saveorder(Shipping shipment)
	{
	PlaceOrder pc=new PlaceOrder();
	String username=cc.getusername();	
	int sid=shipment.getShipid();
	List<MainCart> mc= cs.getmaincart(sid);
	for(int i=0;i<mc.size();i++)
	{
		pc.setCart(mc.get(i));
		cs.saveorder(pc);
		
	}
	cs.deletecart(username);
	}
}
