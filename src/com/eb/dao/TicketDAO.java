package com.eb.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.eb.model.Ticket;

public class TicketDAO {

public Ticket getTicket(int id){
		
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Ticket ticket = null;
		try
		{
			con = DBConnection.getConnection();
			stmt = con.prepareStatement("select * from tickets where ticket_id=?");
			stmt.setInt(1,id);
			rs=stmt.executeQuery();
			while(rs.next()) {
				ticket = new Ticket(rs.getInt(1),rs.getString(4),rs.getDouble(5),rs.getDate(6),rs.getDouble(7),rs.getString(8));	
			}
			return ticket;
		}
		catch(SQLException se){se.printStackTrace();}
		finally
		{
			try
			{
				if(stmt!=null)
					stmt.close();
				if(rs!=null)
					rs.close();
				if(con!=null)
					con.close();
			}
			catch(SQLException se){se.printStackTrace();}
		}
		return ticket;
		
	}

	public List<Ticket> getAllTicketsByEvent(int eventID)
    {
        Connection con =null;
        ResultSet rs = null;
        PreparedStatement stmt = null;
        List<Ticket> list = new ArrayList<>();
        Ticket ticket = null;
        try
        {
            con = DBConnection.getConnection();
            stmt =con.prepareStatement("select * from tickets where event_id=?");
            stmt.setInt(1,eventID);
            rs=stmt.executeQuery();
            while(rs.next()) {
            	ticket = new Ticket(rs.getInt(1),rs.getString(4),rs.getDouble(5),rs.getDate(6),rs.getDouble(7),rs.getString(8));	
                list.add(ticket);
            }
        }
        catch(SQLException se) {se.printStackTrace();}
        finally
        {
            try
            {
                if(stmt!=null)
                    stmt.close();
                if(rs!=null)
                    rs.close();
                if(con!=null)
                    con.close();
            }
            catch(SQLException se) {se.printStackTrace();}
        }
        return list;
    }
	
	public boolean deleteTicket(int id){
		
		Connection con = null;
		PreparedStatement stmt = null;
		try
		{
			con = DBConnection.getConnection();
			stmt = con.prepareStatement("delete from tickets where ticket_id=?");
			stmt.setInt(1,id);
			int n = stmt.executeUpdate();
		    return n>0?true:false;
		}
		catch(SQLException se){se.printStackTrace();}
		finally
		{
			try
			{
				if(stmt!=null)
					stmt.close();
				if(con!=null)
					con.close();
			}
			catch(SQLException se){se.printStackTrace();}
		}
		return false;
		
	}
	
	
	public boolean updateTicket(Ticket t){
		
		Connection con = null;
		PreparedStatement stmt = null;
		try
		{
			con = DBConnection.getConnection();
			stmt = con.prepareStatement("update tickets set seat_no=? where ticket_id=?");
			stmt.setString(1,t.getSeat_no());
			stmt.setInt(2,t.getTicket_id());
		
			int n = stmt.executeUpdate();
		    return n>0?true:false;
		}
		catch(SQLException se){se.printStackTrace();}
		finally
		{
			try
			{
				if(stmt!=null)
					stmt.close();
				if(con!=null)
					con.close();
			}
			catch(SQLException se){se.printStackTrace();}
		}
		return false;
		
	}
	
	public boolean createTicket(Ticket t){
		
		Connection con = null;
		PreparedStatement stmt = null;
		try
		{
			con = DBConnection.getConnection();
			stmt = con.prepareStatement("insert into tickets values(tickets_sequence.nextval,?,?,?,?,?,?,?)");
			stmt.setInt(1,t.getCustomer().getCustomerId());
			stmt.setInt(2, t.getEvent().getEventId());
			stmt.setString(3, t.getSeat_no());
			stmt.setDouble(4, t.getCommission());
			stmt.setDate(5, (Date) t.getPayment_date());
			stmt.setDouble(6,t.getPayment_amount());
			stmt.setString(7, t.getPayment_status());
			
			int n = stmt.executeUpdate();
		    return n>0?true:false;
		}
		catch(SQLException se){se.printStackTrace();}
		finally
		{
			try
			{
				if(stmt!=null)
					stmt.close();
				if(con!=null)
					con.close();
			}
			catch(SQLException se){se.printStackTrace();}
		}
		return false;
		
	}
	
	public double calculateCommission() {
		return 0;
	}
	
	public double calculateSales() {
		return 0;
	}
}
