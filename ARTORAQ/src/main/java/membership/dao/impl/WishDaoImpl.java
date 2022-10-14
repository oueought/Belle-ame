package membership.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import common.JDBCTemplate;
import dto.Board;
import dto.Wish;
import membership.dao.face.WishDao;

public class WishDaoImpl implements WishDao {
	
	private PreparedStatement ps;
	private ResultSet rs;
	
//	public List<Wish> selectWishByMemberId(Connection conn, String memid) {
//		
//		String sql = "";
//		sql += "SELECT * FROM wish";
//		sql += " WHERE memid = ?";
//		sql += " ORDER BY wishno DESC";	//최신순으로 정렬
//		
//		//결과 저장할 List
//		List<Wish> wishList = new ArrayList<>();
//		
//		try {
//			ps = conn.prepareStatement(sql);
//			ps.setString(1, memid);
//			rs = ps.executeQuery();
//			
//			while(rs.next()) {
//				Wish w = new Wish();	//결과값 저장 객체
//				
//				//결과값 한 행씩 처리
//				w.setWishno(rs.getInt("wishno"));
//				w.setMemid(rs.getString("memid"));
//				w.setBoardno(rs.getString("boardno"));
//				
//				//리스트에 결과값 저장
//				wishList.add(w);
//				
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			JDBCTemplate.close(rs);
//			JDBCTemplate.close(ps);
//		}
//		
//		return wishList;
//	}

	@Override
	public List<Wish> selectByMemberId(Connection conn, String memid) {
		String sql = "";
		sql += "SELECT * FROM wish";
		sql += " WHERE memid = ?";
		sql += " ORDER BY wishno DESC";	//최신순으로 정렬
		
		//결과 저장할 List
		List<Wish> wishList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, memid);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Wish w = new Wish();	//결과값 저장 객체
				
				//결과값 한 행씩 처리
				w.setWishno(rs.getInt("wishno"));
				w.setMemid(rs.getString("memid"));
				w.setBoardno(rs.getString("boardno"));
				
				//리스트에 결과값 저장
				wishList.add(w);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return wishList;
		
		
	}

	@Override
	public List<Map<String, Object>> selectByMemberIdWithBoard(Connection conn, String memid) {
		String sql = "";

		sql += "SELECT";
		sql += "	W.*,";
		sql += "	B.title, B.period, B.location, B.price";
		sql += " FROM wish W, board B";
		sql += " WHERE W.boardno = B.boardno";
		sql += "	AND memid = ?";
		sql += " ORDER BY wishno DESC";
		
		//결과 저장할 List
		List<Map<String, Object>> wishList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, memid);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Wish w = new Wish();	//결과값 저장 객체
				Board b = new Board();
				
				//결과값 한 행씩 처리
				w.setWishno(rs.getInt("wishno"));
				w.setMemid(rs.getString("memid"));
				w.setBoardno(rs.getString("boardno"));
				
//				b.setBoardno( ); //타입 문제로 사용 문제있음
				
				b.setTitle(rs.getString("title"));
				b.setPeriod(rs.getString("period"));
				b.setLocation(rs.getString("location"));
				b.setPrice(rs.getInt("price"));
				
				Map<String, Object> map = new HashMap<>();
				
				map.put("wish", w);
				map.put("board", b);
				
				//리스트에 결과값 저장
				wishList.add(map);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return wishList;
		
		
	}
	

}
