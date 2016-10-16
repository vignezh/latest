/*package com.vic.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vic.model.PlaceOrder;
import com.vic.service.CartService;

@Controller
public class UserOrderController {

	@Autowired
	CartService cs;

	@Autowired
	CartController cc;

	@RequestMapping("/orders")
	public String ord(Map<String, Object> map) {
		String username = cc.getusername();
		System.out.println("order details");
		PlaceOrder ord = new PlaceOrder();
		map.put("order", ord);
		map.put("orderitems", cs.getorder(username));
		System.out.println("orderplaced" + username);
		return "orders";
	}

}
*/