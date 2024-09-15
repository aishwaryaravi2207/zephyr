package com.zephyr.project;

public class Inventory {

	int id;
	String item_name;
	String item_type;
	double item_price;

	public Inventory(String item_name, String item_type, double item_price) {
		this.item_name = item_name;
		this.item_type = item_type;
		this.item_price = item_price;
	}

	public int getId() {
		return id;
	}

	public String getItem_name() {
		return item_name;
	}

	public String getItem_type() {
		return item_type;
	}

	public double getItem_price() {
		return item_price;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public void setItem_type(String item_type) {
		this.item_type = item_type;
	}

	public void setItem_price(double item_price) {
		this.item_price = item_price;
	}

}
