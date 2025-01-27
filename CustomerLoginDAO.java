package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerLoginDAO
{

	public CustomerBean checkCustomerLogin(String cname, String cpwd) 
	{
		CustomerBean cbean=null;
		
		try 
		{
			Connection con=DBConnect.getCon();
			PreparedStatement	pstm=con.prepareStatement("select * from customer where UNAME=? and PWORD=?");
			pstm.setString(1, cname);
			pstm.setString(2, cpwd);
			
			ResultSet	rs=pstm.executeQuery();
			
			if(rs.next()) {
				
				cbean=new CustomerBean();
				cbean.setCname(rs.getString(1));
				cbean.setCpwd(rs.getString(2));
				cbean.setCfname(rs.getString(3));
				cbean.setClname(rs.getString(4));
				cbean.setCadd(rs.getString(5));
				cbean.setCmail(rs.getString(6));
				cbean.setCphone(rs.getString(7));
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return cbean;
		
	}
	

}
