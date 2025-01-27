package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CsignUpDAO
{
	public int insertCdata( CustomerBean cb)
	{
		int rowCount=0;
		try 
		{
			Connection con=DBConnect.getCon();
			PreparedStatement pstm=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");

			pstm.setString(1,cb.getCname());
			pstm.setString(2,cb.getCpwd());
			pstm.setString(3,cb.getCfname());
			pstm.setString(4,cb.getClname());
			pstm.setString(5, cb.getCadd());
			pstm.setString(6, cb.getCmail());
			pstm.setString(7,cb.getCphone());
			
			rowCount = pstm.executeUpdate();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return rowCount;
		
	}
	

}
