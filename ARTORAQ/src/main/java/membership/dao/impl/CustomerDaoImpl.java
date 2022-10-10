package membership.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import dto.Customer;
import membership.dao.face.CustomerDao;

public class CustomerDaoImpl implements CustomerDao {

	private PreparedStatement ps;
	private ResultSet rs;
	
//	@Override
//	public int selectCntCustomerByUseridUserpw(Connection conn, Customer customer) {
//		
//		String sql = "";
//		sql += "SELECT count(*) cnt FROM customer";
//		sql += " WHERE customer_id = ?";
//		sql += "	AND customer_pw = ?";
//		
//		int cnt = 0;
//		
//		try {
//			ps = conn.prepareStatement(sql);
//			ps.setString(1, customer.getCustomer_id());
//			ps.setString(2, customer.getCustomer_pw());
//			
//			rs = ps.executeQuery();
//			
//			while(rs.next()) {
//				cnt = rs.getInt("cnt");
//			}
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			JDBCTemplate.close(rs);
//			JDBCTemplate.close(ps);
//		}
//				
//		return cnt;
//	}
	
	@Override
	public Customer selectCustomerByUserid(Connection conn, Customer customer) {

		String sql = "";
		sql += "SELECT customer_id, customer_pw, customer_nickname, customer_name, customer_phone FROM customer";
		sql += " WHERE customer_id = ?";
		
		Customer result = null;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, customer.getCustomer_id());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				result = new Customer();
				
				result.setCustomer_id(result.getCustomer_id());
				result.setCustomer_pw(result.getCustomer_pw());
				result.setCustomer_nickname(result.getCustomer_nickname());
				result.setCustomer_name(result.getCustomer_name());
				result.setCustomer_phone(result.getCustomer_phone());
				result.setCustomer_email(result.getCustomer_email());
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
				
		return result;
		
	}
	
	@Override
	public int insert(Connection conn, Customer customer) {
		
		String sql = "";
		sql += "INSERT INTO customer ( customer_id, customer_pw, customer_nickname, customer_name, customer_phone, customer_email )";
		sql += " VALUES ( ?, ?, ?, ?, ?, ? )";
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, customer.getCustomer_id());
			ps.setString(2, customer.getCustomer_pw());
			ps.setString(3, customer.getCustomer_nickname());
			ps.setString(4, customer.getCustomer_name());
			ps.setString(5, customer.getCustomer_phone());
			ps.setString(6, customer.getCustomer_email());
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
	}

	@Override
	public int selectCntCustomerByCustomer_idCustomer_pw(Connection conn, Customer customer) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Customer selectCustomerByCustomer_id(Connection conn, Customer customer) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectCntCustomerByUseridUserpw(Connection conn, Customer customer) {
		// TODO Auto-generated method stub
		return 0;
	}


	
}