package com.pack1;

import java.io.Serializable;

public class OrderBean implements Serializable
{
	private String rqty;
	private String pcode,pname,pcompany,price,Pqty;
	
	private double totalprice;
	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	public String getPqty() {
		return Pqty;
	}

	public void setPqty(String pqty) {
		Pqty = pqty;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPcompany() {
		return pcompany;
	}

	public void setPcompany(String pcompany) {
		this.pcompany = pcompany;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getRqty() {
		return rqty;
	}

	public void setRqty(String rqty) {
		this.rqty = rqty;
	}
	

}
