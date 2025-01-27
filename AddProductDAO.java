package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddProductDAO 
{
	public int insertData(ProductBean pb)
	{
		int rowCount=0;
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement	pstm1=con.prepareStatement("insert into product values(?,?,?,?,?)");
			pstm1.setString(1,pb.getPcode());
			pstm1.setString(2,pb.getPname());
			pstm1.setString(3,pb.getPcompany());
			pstm1.setString(4,pb.getPprice());
			pstm1.setString(5,pb.getPqty());
		
			rowCount=pstm1.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return rowCount;
	}

}
