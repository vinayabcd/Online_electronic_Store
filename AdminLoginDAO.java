package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminLoginDAO 
{
	public AdminBean checkAdminLogin(String aUsername,String aPassword) 
	{
		AdminBean abean=null;
		
		try 
		{
			Connection con=DBConnect.getCon();
			PreparedStatement	pstm=con.prepareStatement("select * from admin where uname=? and pword=?");
			pstm.setString(1, aUsername);
			pstm.setString(2, aPassword);
			
			ResultSet	rs=pstm.executeQuery();
			
			if(rs.next()) {
				
				abean=new AdminBean();
				abean.setaUsername(rs.getString(1));
				abean.setaPassword(rs.getString(2));
				abean.setaFname(rs.getString(3));
				abean.setaLname(rs.getString(4));
				abean.setaAddress(rs.getString(5));
				abean.setaMailId(rs.getString(6));
				abean.setaPhoneNO(rs.getString(7));
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return abean;
		
	}

}
