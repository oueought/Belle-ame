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

	private PreparedStatement ps;	// SQL 수행 
	private ResultSet rs;			// SQL 결과 
	
	
	
	@Override
	public List<Board> selectAll(Connection conn) {
		
		
		String sql = "";
		sql += "SELECT * FROM info_board";
		sql += " ORDER BY boardno DESC";
		
		
		// 결과 저장 List
		List<Board> boardList = new ArrayList<>();
		
		try {

			ps = conn.prepareStatement(sql);	// SQL 수행
			
			rs = ps.executeQuery();		// SQL 수행 및 결과 집합 저장
			
			while(rs.next()) {
				Board b = new Board();	// 결과 값 저장
				
				b.setBoardno(rs.getInt("boardno"));
				b.setTitle(rs.getString("title"));
				b.setContent(rs.getString("content"));
				b.setPeriod(rs.getString("period"));
				b.setLocation(rs.getString("location"));
				b.setPrice(rs.getInt("price"));
				
				// 리스트에 결과 값 저장 
				boardList.add(b);
				
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
				
		
		
		
		return boardList;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 게시글 입력
	@Override
	public int insert(Connection conn, Board board) {
		
		String sql = "";
		sql += "INSERT INTO info_board ( boardno, title, content, period, location, price )";
		sql += " VALUES (info_board_seq.nextval, ?, ? , ?, ?,? )";
		
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, board.getTitle());
			ps.setString(2, board.getContent());
			ps.setString(3, board.getPeriod());
			ps.setString(4, board.getLocation());
			ps.setInt(5, board.getPrice());
			
			res = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
	}




	
	
	
	// -------------------------------- 댓글 추후에 추가 -------------------------------------------------
	
	
//	@Override
//	public int insert(Connection conn, Comment comment) {
//		
//		String sql="";
//		sql += "INSERT INTO review_comment ( cm_Id, info_Id, customer_Id, cm_Contents, review_Rating, good)";
//		sql += " VALUES ( cm_id.nextval, '3', 'cherry', ?,?,'1')";
//		
//		int res = 0;
//		
//		try {
//			ps = conn.prepareStatement(sql);
//			
//			
////			ps.setInt(2, comment.getInfoId());
////			ps.setString(3, comment.getCustomerId());
//			ps.setString(1, comment.getCmContents());	// 물음표 부분만 set으로 불러오기
//			ps.setInt(2, comment.getReviewRating());
////			ps.setInt(7, comment.getGood());
//			
//			res = ps.executeUpdate();
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			JDBCTemplate.close(ps);
//		}
//		return res;
//	}
//
//	
//	@Override
//	public List<Comment> commentAllByInfoId(Connection conn) {
//		
//		String sql="";
//		sql += "SELECT * FROM comment";
//		sql += " ORDER BY infoid DESC";
//		
//		List<Comment> commentList = new ArrayList<>();
//		
//		try {
//			ps = conn.prepareStatement(sql);
//			
//			rs = ps.executeQuery();
//			
//			while(rs.next()) {
//				Comment c = new Comment();
//				
//				c.setCmId( rs.getInt("cmId"));
//				c.setInfoId( rs.getInt("infoId"));
//				c.setCustomerId( rs.getString("customerID"));
//				c.setCmContents( rs.getString("contents"));
//				c.setCmDate( rs.getDate("cmDate"));
//				c.setReviewRating( rs.getInt("reviewRating"));
//				c.setGood( rs.getInt("good"));
//				
//				commentList.add(c);
//			}
//			
//			
//		} catch (SQLException e){
//			e.printStackTrace();
//			
//		} finally {
//			JDBCTemplate.close(rs);
//			JDBCTemplate.close(ps);
//			
//		}
//		
//		return commentList;
//	}
//
//	
//	
	
	
}
