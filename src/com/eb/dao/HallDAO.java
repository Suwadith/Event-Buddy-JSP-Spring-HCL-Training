package com.eb.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.eb.model.Hall;


public class HallDAO {

	JdbcTemplate jdbcTemplate;
	
	public HallDAO() {}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public boolean createHall(Hall h) {
		String query = "insert into halls values(?,?,?,?,?,?,?)";
			int result = jdbcTemplate.update(query,h.getHallId(),h.getHallName(),h.getHallType(),h.getHallLocation(),h.getHallContact(),h.getNoOfSeats(),h.getOwner().getOwnerId());
			return result>0?true:false;
	}
	
	public boolean updateHall(Hall h) {
		String query = "update halls set hall_name=?,hall_name=?,hall_type=?,hall_location=?,hall_contact=?,no_of_seats=? where hall_id=?";
		int result = jdbcTemplate.update(query,h.getHallName(),h.getHallType(),h.getHallLocation(),h.getHallContact(),h.getNoOfSeats(),h.getHallId());
			return result>0?true:false;
	}
	
	public boolean deleteHall(int id) {
		String query = "delete from halls where hall_id=?";
			int result = jdbcTemplate.update(query,id);
			return result>0?true:false;
	}
	
	public List<Hall> getAllHalls(){
		String query = "select * from halls";

		
		return jdbcTemplate.query(query, new RowMapper<Hall>(){
			public Hall mapRow(ResultSet rs, int rownum) throws SQLException {
				Hall h = new Hall();
				h.setHallId(rs.getInt(1));
				h.setHallName(rs.getString(2));
				h.setHallType(rs.getString(3));
				h.setHallLocation(rs.getString(4));
				h.setHallContact(rs.getString(5));
				h.setNoOfSeats(rs.getInt(6));
				return h;
				
			}
		});
	}
		
		public List<Hall> getHallByOwner(int id){
			String query = "select * from halls where owner_id=?";
			return jdbcTemplate.query(query,new Object[]{id}, new RowMapper<Hall>(){
				public Hall mapRow(ResultSet rs, int rownum) throws SQLException {
					Hall h = new Hall();
					h.setHallId(rs.getInt(1));
					h.setHallName(rs.getString(2));
					h.setHallType(rs.getString(3));
					h.setHallLocation(rs.getString(4));
					h.setHallContact(rs.getString(5));
					h.setNoOfSeats(rs.getInt(6));
					return h;
					
				}
			});
		
	}
	
	
	
	
}