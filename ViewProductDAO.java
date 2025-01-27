package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewProductDAO 
{
	ArrayList<ProductBean> al=new ArrayList<ProductBean>();
	
	public ArrayList<ProductBean> retriveProducts()
	{
		try
		{
			Connection con=DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("select * from product");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				ProductBean pb=new ProductBean();
				pb.setPcode(rs.getString(1));
				pb.setPname(rs.getString(2));
				pb.setPcompany(rs.getString(3));
				pb.setPprice(rs.getString(4));
				pb.setPqty(rs.getString(5));
				al.add(pb);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return al;
	}
	
	
	
}