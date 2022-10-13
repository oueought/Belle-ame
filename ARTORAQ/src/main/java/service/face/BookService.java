package service.face;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.Book;

public interface BookService {
	
	/**
	 * 리스트 전체 조회
	 * 
	 * @return List<Book> - 전체 조회 결과 목록
	 */
	public List<Book> getBookList();
	
	/**
	 * 로그인한 사람의 리스트 전체 조회
	 * 
	 * @return List<Book> - 전체 조회 결과 목록
	 */
	public List<Book> getMyBookList(String memid);
	
}
