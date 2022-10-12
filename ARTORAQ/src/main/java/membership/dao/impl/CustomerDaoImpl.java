package membership.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import membership.dao.face.CustomerDao;
import dto.Customer;

public class CustomerDaoImpl implements CustomerDao {
	
	private PreparedStatement ps;
	private ResultSet rs;

	
	//--- 회원가입 업데이트 ---
	@Override
	public int insert(Connection conn, Customer customer) {
		
		String sql = "";
		sql += "INSERT INTO customer ( customer_id, customer_pw, customer_nickname, customer_name, customer_phone, customer_email, customer_birth )";
		sql += " VALUES ( ?, ?, ?, ?, ?, ?, ? )";
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, customer.getCustomer_id());
			ps.setString(2, customer.getCustomer_pw());
			ps.setString(3, customer.getCustomer_nickname());
			ps.setString(4, customer.getCustomer_name());
			ps.setString(5, customer.getCustomer_phone());
			ps.setString(6, customer.getCustomer_email());
			ps.setString(7, customer.getCustomer_birth());
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
	}
	
	//--- 마이페이지 업데이트 ---
	@Override
	public int update(Connection conn, Customer customer) {
		
		String sql = "";
		sql += "UPDATE customer SET customer_pw = ?, customer_nickname = ?, customer_phone = ?, customer_email = ?";
//		sql += " WHERE customer_id = ?";
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, customer.getCustomer_pw());
			ps.setString(2, customer.getCustomer_nickname());
			ps.setString(3, customer.getCustomer_phone());
			ps.setString(4, customer.getCustomer_email());
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
	}

}
