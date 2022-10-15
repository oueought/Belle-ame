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
import dto.UploadFile;

public class BoardDaoImpl implements BoardDao {

	private PreparedStatement ps;	// SQL 수행 
	private ResultSet rs;			// SQL 결과 
	
	
	
	@Override
	public List<Board> selectAll(Connection conn) {
		
		
		String sql = "";
		sql += "SELECT * FROM board";
		sql += " ORDER BY boardno";
		
		
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
	
	
	
	
	
	
	
	

	@Override
	public Board selectBoardByBoard(Connection conn, Board boardno) {
	
		String sql="";
		sql += "SELECT";
		sql += "    boardno, title, content";
		sql += "    , period, location, price";
		sql += " FROM board";
		sql += " WHERE boardno = ?";
		
		
		Board board = null;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, boardno.getBoardno());
			
			rs = ps.executeQuery();
			
			while( rs.next() ) {
				board = new Board();
				
				board.setBoardno( rs.getInt("boardno") );
				board.setTitle( rs.getString("title") );
				board.setContent( rs.getString("content") );
				board.setPeriod( rs.getString("period"));
				board.setLocation( rs.getString("location"));
				board.setPrice( rs.getInt("boardno") );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return board;
	}

	
	
	
	
	
	
	// 게시글 입력
	@Override
	public int insert(Connection conn, Board board) {
		
		String sql = "";
		sql += "INSERT INTO board ( boardno, title, content, period, location, price )";
		sql += " VALUES ( ?, ?, ? , ?, ?,? )";
		
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, board.getBoardno());
			ps.setString(2, board.getTitle());
			ps.setString(3, board.getContent());
			ps.setString(4, board.getPeriod());
			ps.setString(5, board.getLocation());
			ps.setInt(6, board.getPrice());
			
			res = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
	}





	@Override
	public int selectNextBoardno(Connection conn) {
		
		String sql ="";
		sql += "SELECT board_seq.nextval FROM dual";
		
		int nextBoardno = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while ( rs.next() ) {
				nextBoardno = rs.getInt("nextval");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		
		return nextBoardno;
	}





	@Override
	public int insertFile(Connection conn, UploadFile uploadFile) {
		
		String sql = "";
		sql += "INSERT INTO upload ( uploadno, boardno, uploadname )";
		sql += " VALUES ( uploadno_seq.nextval, ?, ? )";	
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, uploadFile.getBoardno());
			ps.setString(2, uploadFile.getUploadname());
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
				e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		
		return res;
	}




	// 게시글 삭제 전 파일도 삭제
	
	@Override
	public int deleteFile(Connection conn, Board board) {
		
		
		String sql = "";
		sql += "DELETE boardfile ";
		sql += " WHERE boardno = ?";
		
		int res = 0;

		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, board.getBoardno());
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
		
	}



	// 게시글 삭제

	@Override
	public int delete(Connection conn, Board board) {
		String sql = "";
		sql += "DELETE board";
		sql += " WHERE boardno = ?";
		
		int res = 0;

		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, board.getBoardno());
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
		
	}







	
}
