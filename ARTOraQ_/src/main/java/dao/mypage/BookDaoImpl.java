package dao.mypage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import common.JDBCTemplate;
import dao.mypage.BookDao;
import dto.mypage.Board;
import dto.mypage.Book;

public class BookDaoImpl implements BookDao {
	
	private PreparedStatement ps;
	private ResultSet rs; 

	
	@Override
	public List<Book> selectByMemberId(Connection conn, String memid) {
		
		String sql="";
		sql += "SELECT * FROM book";
		sql += " WHERE memid = ?";
		sql += " ORDER BY bookno DESC"; //최신순으로 정렬
		
		//결과 저장할 List
		List<Book> bookList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, memid);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Book k = new Book();	//결과값 저장 객체
				
				//결과값 한 행씩 처리
				k.setAmount(rs.getInt("amount"));
				k.setBoardno(rs.getString("boardno"));
				k.setBookno(rs.getInt("bookno"));
				k.setBookdate(rs.getDate("bookdate"));
				k.setBookprice(rs.getInt("bookprice"));
				k.setMemid(rs.getString("memid"));
				k.setPrice(rs.getInt("price"));
				
				//리스트에 결과값 저장
				bookList.add(k);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return bookList;
	}

	
	@Override
	public List<Map<String, Object>> selectBookByMemberIdWithBoard(Connection conn, String memid) {

		String sql = "";
		
		sql += "SELECT";
		sql += "	K.*,";
		sql += "	B.title, B.period, B.location, B.price";
		sql += " FROM book K, board B";
		sql += " WHERE K.boardno = B.boardno";
		sql += "	AND memid = ?";
		sql += " ORDER BY bookno DESC";
		
		//결과 저장할 List
		List<Map<String, Object>> bookList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, memid);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Book k = new Book();	//결과값 저장 객체
				Board b = new Board();
				
				//결과값 한 행씩 처리
				k.setAmount(rs.getInt("amount"));
				k.setBoardno(rs.getString("boardno"));
				k.setBookno(rs.getInt("bookno"));
				k.setBookdate(rs.getDate("bookdate"));
				k.setBookprice(rs.getInt("bookprice"));
				k.setMemid(rs.getString("memid"));
				k.setPrice(rs.getInt("price"));
				
				b.setBoardno(rs.getInt("boardno"));
				b.setTitle(rs.getString("title"));
				b.setPeriod(rs.getString("period"));
				b.setLocation(rs.getString("location"));
				
				Map<String, Object> map = new HashMap<>();
				
				map.put("book", k);
				map.put("board", b);
				
				//리스트에 결과값 저장
				bookList.add(map);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return bookList;
	}

}

