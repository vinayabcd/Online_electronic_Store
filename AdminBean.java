package com.pack1;

import java.io.Serializable;

public class AdminBean implements Serializable
{
	 private String aUsername,aPassword,aFname,aLname,aAddress,aMailId,aPhoneNO;

	public String getaUsername() {
		return aUsername;
	}

	public void setaUsername(String aUsername) {
		this.aUsername = aUsername;
	}

	public String getaPassword() {
		return aPassword;
	}

	public void setaPassword(String aPassword) {
		this.aPassword = aPassword;
	}

	public String getaFname() {
		return aFname;
	}

	public void setaFname(String aFname) {
		this.aFname = aFname;
	}

	public String getaLname() {
		return aLname;
	}

	public void setaLname(String aLname) {
		this.aLname = aLname;
	}

	public String getaAddress() {
		return aAddress;
	}

	public void setaAddress(String aAddress) {
		this.aAddress = aAddress;
	}

	public String getaMailId() {
		return aMailId;
	}

	public void setaMailId(String aMailId) {
		this.aMailId = aMailId;
	}

	public String getaPhoneNO() {
		return aPhoneNO;
	}

	public void setaPhoneNO(String aPhoneNO) {
		this.aPhoneNO = aPhoneNO;
	}
	
public AdminBean() {
	
}
}
