package book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;


public class BookDaoImpl implements BookDao {
	
	private PreparedStatement ps;
	private ResultSet rs; 

	@Override
	public List<Book> selectBookUserid(Connection conn) {
		
		String sql = "";
		sql += "SELECT * FROM book";
		sql += " ORDER BY bookno DESC"; //최신순으로 정렬
		
		//결과 저장할 List
		List<Book> bookList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Book b = new Book(); //결과값 저장 객체
				
				//결과값 한 행씩 처리
				b.setBookdate(rs.getDate("book_date"));
				b.setAmount(rs.getInt("book_acount"));
				b.setBookprice(rs.getInt("book_price"));
				
				//리스트에 결과값 저장
				bookList.add(b);
				
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
	public List<Book> selectBookByMemberId(Connection conn, String memid) {

		String sql = "";
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
				Book b = new Book(); //결과값 저장 객체
				
				//결과값 한 행씩 처리
				b.setBookdate(rs.getDate("bookdate"));
				b.setAmount(rs.getInt("amount"));
				b.setBookprice(rs.getInt("bookprice"));
				
				//리스트에 결과값 저장
				bookList.add(b);
				
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
