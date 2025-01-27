package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class OrderProductDAO 
{

	public int orderProduct(OrderBean ob) {
		int rowCount=0;
		
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement pstm=con.prepareStatement("UPDATE product SET PQTY = PQTY - ? WHERE PCODE = ? AND PQTY >= ?");
			
		
			pstm.setString(1,ob.getRqty()); 
            pstm.setString(2, ob.getPcode());     
            pstm.setString(3, ob.getRqty());
            rowCount=pstm.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		
		return rowCount;
	}

}
