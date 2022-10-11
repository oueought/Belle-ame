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
	
	//--- 로그인 ---
	@Override
	public int selectCntCustomerByUseridUserpw(Connection conn, Customer customer) {
		
		String sql = "";
		sql += "SELECT count(*) cnt FROM customer";
		sql += " WHERE customer_id = ?";
		sql += " AND customer_pw = ?";
		
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
	
	//--- 아이디찾기 ---
	@Override
	public int selectCntCustomerByUsernameUserphone(Connection conn, Customer customer) {
		
		String sql = "";
		sql += "SELECT count(*) cnt FROM customer";
		sql += " WHERE customer_name = ?";
		sql += "	AND customer_phone = ?";
		
		int cnt = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, customer.getCustomer_name());
			ps.setString(2, customer.getCustomer_phone());
			
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
	
	@Override
	public Customer selectCustomerByUsername(Connection conn, Customer customer) {
		
		String sql = "";
		sql += "SELECT customer_name, customer_phone, customer_id FROM customer";
		sql += " WHERE customer_name = ?";
		sql += " AND customer_phone = ?"; //이름, 휴대폰번호 둘 다 만족하는 회원
		
		Customer res = null;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, customer.getCustomer_name());
			ps.setString(2, customer.getCustomer_phone());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				res = new Customer();
				
				res.setCustomer_name(rs.getString("customer_name"));
				res.setCustomer_phone(rs.getString("customer_phone"));
				res.setCustomer_id(rs.getString("customer_id"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return res;
	}

	//--- 비밀번호 찾기 ---
	@Override
	public int selectCntCustomerByUseridUserphone(Connection conn, Customer customer) {
		
		String sql = "";
		sql += "SELECT count(*) cnt FROM customer";
		sql += " WHERE customer_id = ?";
		sql += " AND customer_phone = ?";
		
		int cnt = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, customer.getCustomer_id());
			ps.setString(2, customer.getCustomer_phone());
			
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

	@Override
	public Customer selectCustomerByUserid(Connection conn, Customer customer) {
		
		String sql = "";
		sql += "SELECT customer_id, customer_phone, customer_pw FROM customer";
		sql += " WHERE customer_id = ?";
		sql += " AND customer_phone = ?"; //아이디, 휴대폰번호 둘 다 만족하는 회원
		
		Customer res = null;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, customer.getCustomer_id());
			ps.setString(2, customer.getCustomer_phone());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				res = new Customer();
				
				res.setCustomer_id(rs.getString("customer_id"));
				res.setCustomer_phone(rs.getString("customer_phone"));
				res.setCustomer_pw(rs.getString("customer_pw"));
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
