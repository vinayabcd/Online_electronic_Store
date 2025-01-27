package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateProductDAO 
{
	public int updateProduct(ProductBean pb) {
		int rowCount=0;
		
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement pstm=con.prepareStatement("update product set PPRICE=?,PQTY=? where PCODE=?");
			
			pstm.setString(1,pb.getPprice());
			pstm.setString(2, pb.getPqty());
			pstm.setString(3, pb.getPcode());
			rowCount=pstm.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		
		return rowCount;
	}

}
