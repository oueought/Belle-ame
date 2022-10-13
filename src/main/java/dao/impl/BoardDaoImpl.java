package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import dao.face.BoardDao;
import dto.Board;
import dto.Comment;

public class BoardDaoImpl implements BoardDao {

	private PreparedStatement ps;
	private ResultSet rs;
	
	
	@Override
	public int insert(Connection conn, Comment comment) {
		
		String sql="";
		sql += "INSERT INTO review_comment ( cm_Id, info_Id, customer_Id, cm_Contents, review_Rating, good)";
		sql += " VALUES ( cm_id.nextval, '3', 'cherry', ?,?,'1')";
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			
//			ps.setInt(2, comment.getInfoId());
//			ps.setString(3, comment.getCustomerId());
			ps.setString(1, comment.getCmContents());	// 물음표 부분만 set으로 불러오기
			ps.setInt(2, comment.getReviewRating());
//			ps.setInt(7, comment.getGood());
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		return res;
	}

	
	@Override
	public List<Comment> commentAllByInfoId(Connection conn) {
		
		String sql="";
		sql += "SELECT * FROM comment";
		sql += " ORDER BY infoid DESC";
		
		List<Comment> commentList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Comment c = new Comment();
				
				c.setCmId( rs.getInt("cmId"));
				c.setInfoId( rs.getInt("infoId"));
				c.setCustomerId( rs.getString("customerID"));
				c.setCmContents( rs.getString("contents"));
				c.setCmDate( rs.getDate("cmDate"));
				c.setReviewRating( rs.getInt("reviewRating"));
				c.setGood( rs.getInt("good"));
				
				commentList.add(c);
			}
			
			
		} catch (SQLException e){
			e.printStackTrace();
			
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
			
		}
		
		return commentList;
	}

	
	
	// 게시글 입력
	@Override
	public int insert(Connection conn, Board board) {
		
		String sql = "";
		sql += "INSERT INTO info_board ( boardno, title, content, period, admin_id, price )";
		sql += " VALUES (info_board_seq.nextval, ?, ? , ?, 'apple',? )";
		
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, board.getTitle());
			ps.setString(2, board.getContent());
			ps.setString(3, board.getPeriod());
			ps.setInt(4, board.getPrice());
			
			res = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
	}

	
	


//	@Override
//	public int selectNextInfoId(Connection conn) {
//		
//		String sql ="";
//		sql += "SELECT info_board_seq.nextval FROM dual";
//		
//		int nextInfoId = 0;
//		
//		try {
//			ps = conn.prepareStatement(sql);
//			
//			rs = ps.executeQuery();
//			
//			while( rs.next() ) {
//				nextInfoId = rs.getInt("nextval");
//			}
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally {
//			JDBCTemplate.close(rs);
//			JDBCTemplate.close(ps);
//		}
//		
//		return 0;
//	}
	
	
	
	
}
