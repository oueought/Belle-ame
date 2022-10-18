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
				
				b.setBoardno(rs.getString("boardno"));
				b.setTitle(rs.getString("title"));
				b.setContent(rs.getString("content"));
				b.setLocation(rs.getString("location"));
				b.setPeriod(rs.getString("period"));
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
		sql += "    , location, period, price";
		sql += " FROM board";
		sql += " WHERE boardno = ?";
		
		
		Board board = null;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, boardno.getBoardno());
			
			rs = ps.executeQuery();
			
			while( rs.next() ) {
				board = new Board();
				
				board.setBoardno( rs.getString("boardno") );
				board.setTitle( rs.getString("title") );
				board.setContent( rs.getString("content") );
				board.setLocation( rs.getString("location"));
				board.setPeriod( rs.getString("period"));
				board.setPrice( rs.getInt("price") );
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
		sql += "INSERT INTO board ( boardno, title, content, location, period, price )";
		sql += " VALUES ( ?, ?, ? , ?, ?,? )";
		
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, board.getBoardno());
			ps.setString(2, board.getTitle());
			ps.setString(3, board.getContent());
			ps.setString(5, board.getLocation());
			ps.setString(4, board.getPeriod());
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
	public String selectNextBoardno(Connection conn) {
		
		String sql ="";
		sql += "SELECT board_seq.nextval FROM dual";
		
		String nextBoardno = "0";
		
		try {
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while ( rs.next() ) {
				nextBoardno = rs.getString("nextval");
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
		sql += "INSERT INTO upload ( uploadno, boardno, uploadname, storedname )";
		sql += " VALUES ( upload_seq.nextval, ?, ?, ? )";	
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, uploadFile.getBoardno());
			ps.setString(2, uploadFile.getUploadname());
			ps.setString(3, uploadFile.getStoredname());
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
				e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		
		return res;
	}

	
	

	@Override
	public UploadFile selectFile(Connection conn, Board viewBoard) {
		
		String sql ="";
		sql += "SELECT";
		sql += "	 uploadno, boardno, uploadname, storedname";
		sql += " FROM upload";
		sql += " WHERE boardno = ?";
		
		// 조회 결과 객체
		UploadFile uploadFile = null;
		
		try {
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, viewBoard.getBoardno());
			
			rs = ps.executeQuery();
			
			while ( rs.next() ) {
				
				uploadFile = new UploadFile();
				
				uploadFile.setUploadno( rs.getInt("uploadno"));
				uploadFile.setBoardno( rs.getString("boardno"));
				uploadFile.setUploadname( rs.getString("uploadname"));
				uploadFile.setStoredname( rs.getString("storedname"));
				
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return uploadFile;
	}






	@Override
	public List<UploadFile> getFile(Connection conn) {
		
		String sql= "";
		sql += "SELECT * FROM upload";
		sql += " ORDER BY uploadno";
		
		// 결과 저장 List
		List<UploadFile> uploadList = new ArrayList<>();

		try {

			ps = conn.prepareStatement(sql);	// SQL 수행
			
			rs = ps.executeQuery();		// SQL 수행 및 결과 집합 저장
			
			while(rs.next()) {
				UploadFile u = new UploadFile();	// 결과 값 저장
				
				u.setUploadno( rs.getInt("uploadno"));
				u.setBoardno( rs.getString("boardno"));
				u.setUploadname( rs.getString("uploadname"));
				u.setStoredname( rs.getString("storedname"));
				
				// 리스트에 결과 값 저장 
				uploadList.add(u);

				
				for (UploadFile a : uploadList )
					System.out.println(a);
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
				
		
		
		
		return uploadList;
	
	}




	@Override
	public int update(Connection conn, Board board) {
		
		String sql = "";
		sql += "UPDATE board ";
		sql += " SET";
		sql += "    title = ?";
		sql += "	, content = ?";
		sql += "	, location = ?";
		sql += " 	, period = ?";
		sql += "	, price = ?";
		sql += " WHERE boardno = ?";
		
		
		int res = 0;
		
		

		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, board.getTitle());
			ps.setString(2, board.getContent());
			ps.setString(3, board.getLocation());
			ps.setString(4, board.getPeriod());
			ps.setInt(5, board.getPrice());
			ps.setString(6, board.getBoardno());
			
			res = ps.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
	}



	
	
	

	// 게시글 삭제 전 파일도 삭제
	
	@Override
	public int deleteFile(Connection conn, Board board) {
		
		
		String sql = "";
		sql += "DELETE upload ";
		sql += " WHERE boardno = ?";
		
		int res = 0;

		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, board.getBoardno());
			
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
			ps.setString(1, board.getBoardno());
			
			res = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
		
	}





	
}
