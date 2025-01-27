package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteProductDAO
{
	public int deleteProduct(String pcode) 
	{
		int rowCount=0;
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement pstm=con.prepareStatement("delete from product where PCODE=? ");
			pstm.setString(1,pcode);
			rowCount = pstm.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return rowCount;
	}

}
