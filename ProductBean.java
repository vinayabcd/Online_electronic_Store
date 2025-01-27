package com.pack1;

import java.io.Serializable;

public class ProductBean implements Serializable
{
	private String Pcode,pname,pcompany,pprice,pqty;

	public String getPcode() {
		return Pcode;
	}

	public void setPcode(String pcode) {
		Pcode = pcode;
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

	public String getPprice() {
		return pprice;
	}

	public void setPprice(String pprice) {
		this.pprice = pprice;
	}

	public String getPqty() {
		return pqty;
	}

	public void setPqty(String pqty) {
		this.pqty = pqty;
	}

}
