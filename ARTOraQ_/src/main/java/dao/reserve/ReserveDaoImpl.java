package dao.reserve;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import dto.reserve.Board;
import dto.reserve.Reserve;

public class ReserveDaoImpl implements ReserveDao {
	
	private PreparedStatement ps;
	private ResultSet rs;
	
	@Override
	public Board boardInfoByBoardNo(String boardNo, Connection conn) {
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
				res.setBoardno(rs.getString(1));
				res.setTitle(rs.getString(2));
				res.setContent(rs.getString(3));
				res.setPeriod(rs.getString(4));
				res.setLocation(rs.getString(5));
				res.setPrice(rs.getInt(6));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return res;
	}

	@Override
	public void reserve(Reserve reserve, Connection conn) {
			
			String sql="";
			sql += "INSERT INTO book (bookno, boardno, memid, price, bookdate, amount, bookprice)";
			sql += " VALUES ( book_seq.nextval, ?, ?, ?, ?, ?, ?)";
			
			int result = 0;
			
			try {
				ps = conn.prepareStatement(sql);
				
				ps.setString(1, reserve.getBoardno());
				ps.setString(2, reserve.getMemid());
				ps.setInt(3, reserve.getPrice());
				ps.setString(4, reserve.getBookdateSt());
				ps.setInt(5, reserve.getAmount());
				ps.setInt(6, reserve.getBookprice());
				
				result = ps.executeUpdate();
				conn.commit();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				JDBCTemplate.close(ps);
				
			}
			
			
		System.out.println("res " + result);	
		}

}