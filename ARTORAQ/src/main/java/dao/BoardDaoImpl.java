package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import dto.Board;
import dto.Member;
import dto.Review;

public class BoardDaoImpl implements BoardDao {

	private PreparedStatement ps;
	private ResultSet rs;
	
	
	@Override
	public int insert(Connection conn, Review review) {
		
		String sql="";
		sql += "INSERT INTO review ( reid, boardno, memid, recontent, rating, good)";
		sql += " VALUES ( review_seq.nextval, '3', 'cherry', ?,?,'1')";
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			
//			ps.setInt(2, comment.getInfoId());
//			ps.setString(3, comment.getCustomerId());
			ps.setString(1, review.getRecontent());	// 물음표 부분만 set으로 불러오기
			ps.setInt(2, review.getRating());
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
	public List<Review> commentAllByInfoId(Connection conn) {
		
		String sql="";
		sql += "SELECT * FROM review";
		sql += " ORDER BY boardno DESC";
		
		List<Review> reviewList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Review c = new Review();
				
				c.setReid( rs.getInt("reid"));
				c.setBoardno( rs.getInt("boardno"));
				c.setMemid( rs.getString("memid"));
				c.setRecontent( rs.getString("recontent"));
				c.setRating( rs.getInt("rating"));
				c.setGood( rs.getInt("good"));
				
				reviewList.add(c);
			}
			
			
		} catch (SQLException e){
			e.printStackTrace();
			
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
			
		}
		
		return reviewList;
	}

	
	
	// 게시글 입력
	@Override
	public int insert(Connection conn, Board board) {
		
		String sql = "";
		sql += "INSERT INTO board ( boardno, title, content, memid, price )";
		sql += " VALUES ( board_seq.nextval, ?, ? , 'apple',? )";
		
		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, board.getTitle());
			ps.setString(2, board.getContent());
			ps.setInt(3, board.getPrice());
			
			res = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(ps);
		}
		
		return res;
	}


	@Override
	public List<Board> searchByKeyword(Connection conn, String result) {
		String sql = "SELECT * FROM board where title like ? or content like ?";
		
		List<Board> list = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%"+result+"%");
			ps.setString(2, "%"+result+"%");
		
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Board board = new Board();
				board.setBoardno(rs.getInt("boardno"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("title"));
				board.setPeriod(rs.getString("period"));
				board.setLocation(rs.getString("location"));
				board.setPrice(rs.getInt("price"));
				
				list.add(board);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
			
		}
		return list;
	}


	@Override
	public int selectBoadrnoByTitle( Connection conn , String title) {
		
		String sql = "SELECT boardno from board where title = ? ";

		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, title);
			
			rs =  ps.executeQuery();
			
			while(rs.next()) {
				res = rs.getInt( "boardno" );
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
	public int cartAdd(Connection conn, Member mem, Board board) {
		
		String sql = "INSERT INTO wish ( wishno, memid, boardno)";
			   sql += " VALUES ( wish_seq.nextval , ? , ? )";
			   
			   int res = 0;
			   System.out.println( "cartadd = " + mem.getMemid());
			   try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, mem.getMemid());  // 회원 아이디
				ps.setInt(2, board.getBoardno()); // 게시물번호
				
				res = ps.executeUpdate();
				
				if(res == 1) {
					JDBCTemplate.commit(conn);
				}else {
					JDBCTemplate.rollback(conn);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(ps);
			}
		
		return res;
	}


	@Override
	public int check(Connection conn, Board board , Member mem) {
		String sql = "SELECT count(*) cnt from wish where boardno = ?  and memid = ? ";

		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, board.getBoardno());
			ps.setString(2, mem.getMemid());
			
			rs =  ps.executeQuery();
			
			while(rs.next()) {
				res = rs.getInt( "cnt" );
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
	public int cartOut(Connection conn, Member mem, Board board) {
		String sql = "DELETE from wish where boardno = ?  and memid = ? ";

		int res = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, board.getBoardno());
			ps.setString(2, mem.getMemid());
			
			res = ps.executeUpdate();
			
			
			if(res == 1) 
				JDBCTemplate.commit(conn);
				return 0;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		System.out.println("cartout = " + res);
	
		
			return -1;
		
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
