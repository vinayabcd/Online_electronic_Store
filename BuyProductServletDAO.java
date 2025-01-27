package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BuyProductServletDAO 
{
	public ProductBean buyProduct(String pcode)
	{
		ArrayList<ProductBean> cal=new ArrayList<ProductBean>();
		ProductBean pb=null;
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement	pstm=con.prepareStatement("select * from product where PCODE=?");
			pstm.setString(1, pcode);
			ResultSet rs=pstm.executeQuery();
			
			if(rs.next())
			{
				pb=new ProductBean();
				pb.setPcode(rs.getString(1));
				pb.setPname(rs.getString(2));
				pb.setPcompany(rs.getString(3));
				pb.setPprice(rs.getString(4));
				pb.setPqty(rs.getString(5));
				cal.add(pb);
			}
		}
		catch(Exception e) 
		{
			e.printStackTrace();
			
			
		}
		
		return pb;
		
		
	}

}
