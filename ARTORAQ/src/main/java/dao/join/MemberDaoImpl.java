
package dao.join;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import dto.join.Member;

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
	public int update(Connection conn, Member member) {
		
		String sql = "";
		sql += "UPDATE member SET mempw = ?, memnick = ?, memphone = ?, mememail = ?";
		sql += " WHERE memid = ?"; 
		// 정확히 어떤 데이터를 업데이트 할 것인지 where절로 지정해줘야함
		// 만약 where 절로 지정하지 않는다면 member테이블의 모든 값이 업데이트 됨

		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, member.getMempw());
			ps.setString(2, member.getMemnick());
			ps.setString(3, member.getMemphone());
			ps.setString(4, member.getMememail());
			ps.setString(5, member.getMemid()); //where절이 추가되었으므로 where절에 들어갈 변수값 지정
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
	}

	//--- 로그인 ---
		@Override
		public int selectCntMemberByUseridUserpw(Connection conn, Member member) {
			
			String sql = "";
			sql += "SELECT count(*) cnt FROM member";
			sql += " WHERE memid = ?";
			sql += " AND mempw = ?";
			
			int cnt = 0;
			
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, member.getMemid());
				ps.setString(2, member.getMempw());
				
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
		

	
}