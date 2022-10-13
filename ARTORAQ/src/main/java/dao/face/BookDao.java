package dao.face;

import java.sql.Connection;
import java.util.List;

import dto.Book;

public interface BookDao {
	
	/**
	 * 
	 * 
	 * @param conn - DB연결 객체
	 * @return  List<Book> - 조회 결과 목록
	 */
	public List<Book> selectBookUserid(Connection conn);

	/**
	 * 
	 * 
	 * @param conn - DB연결 객체
	 * @return  List<Book> - 조회 결과 목록
	 */
	public List<Book> selectBookByMemberId(Connection conn, String memid);
	
}
