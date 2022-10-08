package membership.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.Customer;
import common.JDBCTemplate;
import membership.dao.face.CustomerDao;

public class CustomerDaoImpl implements CustomerDao {
	
	private PreparedStatement ps;
	private ResultSet rs;
	
	@Override
	public int selectCntCustomerByCustomer_idCustomer_pw(Connection conn, Customer customer) {
		
		String sql = "";
		sql += "SELECT count(*) cnt FROM customer";
		sql += " WHERE customer_id = ?";
		sql += "	AND customer_pw = ?";
		
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
	
	@Override
	public Customer selectCustomerByCustomer_id1(Connection conn, Customer customer) {

		String sql = "";
		sql += "SELECT customerid, customerpw, customernickname FROM customer";
		sql += " WHERE customerid = ?";
		
		Customer result = null;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, customer.getCustomer_id());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				result = new Customer();
				
				result.setCustomer_id( rs.getString("customerid") );
				result.setCustomer_pw( rs.getString("customerpw") );
				result.setCustomer_nickname( rs.getString("customernickname") );
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
	public int insert1(Connection conn, Customer customer) {
		
		String sql = "";
		sql += "INSERT INTO customer ( customerid, customerpw, customernickname )";
		sql += " VALUES ( ?, ?, ? )";
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, customer.getCustomer_id());
			ps.setString(2, customer.getCustomer_pw());
			ps.setString(3, customer.getCustomer_nickname());
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
	}

	@Override
	public int selectCntCustomerByCustomeridCustomerpw(Connection conn, Customer customer) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Customer selectCustomerrByCustomerid(Connection conn, Customer customer) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Connection conn, Customer customer) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Customer selectCustomerByCustomer_id(Connection conn, Customer customer) {
		// TODO Auto-generated method stub
		return null;
	}

}
