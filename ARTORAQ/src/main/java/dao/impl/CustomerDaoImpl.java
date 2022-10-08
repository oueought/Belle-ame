package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import dao.face.CustomerDao;
import dto.Customer;

public class CustomerDaoImpl implements CustomerDao {
	
	private PreparedStatement ps;
	private ResultSet rs;
	
	@Override
	public int selectCntCustomerByUseridUserpw(Connection conn, Customer customer) {
		
		String sql = "";
		sql += "SELECT count(*) cnt FROM customer";
		sql += " WHERE customer_id = ? ";
		sql += " AND customer_pw = ? ";
		
		int cnt = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, customer.getCustomer_id());
			ps.setString(2, customer.getCustomer_pw());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				cnt = rs.getInt("cnt");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return cnt;
	}
	
	//---
	@Override
	public Customer selectCustomerByUserid(Connection conn, Customer customer) {
		
		String sql = "";
		sql += "SELECT customer_id, customer_pw, customer_phone FROM customer";
		sql += " WHERE customer_id = ? ";
		
		Customer res = null;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, customer.getCustomer_id());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				res = new Customer();
				
				res.setCustomer_id(rs.getString("customer_id"));
				res.setCustomer_pw(rs.getString("customer_pw"));
				res.setCustomer_phone(rs.getString("customer_phone"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return res;
	}

}
