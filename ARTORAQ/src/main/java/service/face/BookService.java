package service.face;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import dto.Book;

public interface BookService {
		
	/**
	 * 로그인한 사람의 리스트 전체 조회
	 * 
	 * @return List<Wish> - 전체 조회 결과 목록
	 */
	
	public List<Book> getMyBookList(String memid);
	
	/**
	 * 로그인한 사람의 리스트 전체 조회
	 * 
	 * @return List<Book> - 전체 조회 결과 목록
	 */
	public List<Map<String, Object>> getMyBookListWithBoard(String memid);
	

	
}
