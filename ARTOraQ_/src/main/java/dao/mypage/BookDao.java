package dao.mypage;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import dto.mypage.Book;

public interface BookDao {
	
	/**
	 * 
	 * 
	 * @param conn - DB연결 객체
	 * @param memid - 
	 * @return List<Book> - 조회 결과 목록
	 */
	public List<Book> selectByMemberId(Connection conn, String memid);

	/**
	 * 
	 * 
	 * @param conn - DB연결 객체
	 * @return  List<Book> - 조회 결과 목록
	 */
	public List<Map<String, Object>> selectBookByMemberIdWithBoard(Connection conn, String memid);

	
}

