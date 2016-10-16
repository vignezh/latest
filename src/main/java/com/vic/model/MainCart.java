package com.vic.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class MainCart {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cartId;

	@ManyToOne
	private Product product;

	private int quantity;
	private double grandTotal;
	@ManyToOne
	@JoinColumn(name = "shipid")
	private Shipping shippingdetails;

	private double totalprize;

	public double getTotalprize() {
		return totalprize;
	}

	public void setTotalprize(double totalprize) {
		this.totalprize = totalprize;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Shipping getShippingdetails() {
		return shippingdetails;
	}

	public void setShippingdetails(Shipping shippingdetails) {
		this.shippingdetails = shippingdetails;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}

}
