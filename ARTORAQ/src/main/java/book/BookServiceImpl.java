package book;

import java.util.List;

import common.JDBCTemplate;

public class BookServiceImpl implements BookService {

	//DAO 객체
	private BookDao bookDao = new BookDaoImpl();
	
	@Override
	public List<Book> getBookList() {
		
		//전체 조회 결과 처리
		return bookDao.selectBookUserid(JDBCTemplate.getConnection());
		
	}

	@Override
	public List<Book> getMyBookList(String memid) {

		//전체 조회 결과 처리
		return bookDao.selectBookByMemberId(JDBCTemplate.getConnection(), memid);
	}
}
