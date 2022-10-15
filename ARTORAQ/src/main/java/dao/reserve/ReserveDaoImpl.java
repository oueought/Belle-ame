package dao.reserve;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import dto.reserve.Board;

public class ReserveDaoImpl implements ReserveDao {
	
	private PreparedStatement ps;
	private ResultSet rs;
	
	@Override
	public Board getBoardByBoardNo(String boardNo, Connection conn) {
		String sql = "";
		sql += "SELECT boardno, title, content, period, location, price "
				+ " from board where boardno = ?";
		
		Board res = null;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, boardNo);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				res = new Board();
				res.setTitle(rs.getString("title"));
				res.setContent(rs.getString("content"));
				res.setLocation(rs.getString("location"));
				res.setPeriod(rs.getString("period"));
				res.setPrice(Integer.parseInt(rs.getString("price")));
				res.setBoardno(Integer.parseInt(rs.getString("boardno")));
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