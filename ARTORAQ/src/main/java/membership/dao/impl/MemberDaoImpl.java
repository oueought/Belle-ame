
package membership.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import membership.dao.face.MemberDao;
import dto.Member;

public class MemberDaoImpl implements MemberDao {
	
	private PreparedStatement ps;
	private ResultSet rs;

	
	//--- 회원가입 업데이트 ---
	@Override
	public int insert(Connection conn, Member member) {
		
		String sql = "";
		sql += "INSERT INTO member ( memid, mempw, memnick, memname, memphone, mememail, membirth )";
		sql += " VALUES ( ?, ?, ?, ?, ?, ?, ? )";
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, member.getMemid());
			ps.setString(2, member.getMempw());
			ps.setString(3, member.getMemnick());
			ps.setString(4, member.getMemname());
			ps.setString(5, member.getMemphone());
			ps.setString(6, member.getMememail());
			ps.setString(7, member.getMembirth());
			
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
	public int update(Connection conn, Member member) {
		
		String sql = "";
		sql += "UPDATE member SET mempw = ?, memnick = ?, memphone = ?, mememail = ?";
//		sql += " WHERE customer_id = ?";
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, member.getMempw());
			ps.setString(2, member.getMemnick());
			ps.setString(3, member.getMemphone());
			ps.setString(4, member.getMememail());
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
	}

	
}