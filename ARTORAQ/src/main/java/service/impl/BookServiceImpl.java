package service.impl;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dao.face.BookDao;
import dao.impl.BookDaoImpl;
import dto.Book;
import service.face.BookService;

public class BookServiceImpl implements BookService {

	//DAO 객체
	private BookDao bookDao = new BookDaoImpl();

	@Override
	public List<Book> getMyBookList(String memid) {
		
		//전체 조회 결과 처리
		return bookDao.selectByMemberId(JDBCTemplate.getConnection(), memid);
	}

	
	@Override
	public List<Map<String, Object>> getMyBookListWithBoard(String memid) {

		//전체 조회 결과 처리
		return bookDao.selectBookByMemberIdWithBoard(JDBCTemplate.getConnection(), memid);
	}


}
