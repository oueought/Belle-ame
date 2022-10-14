package book;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/mypage/book")
public class BookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//서비스 객체
	private BookService bookService = new BookServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//로그인 세션값 가져오기
		HttpSession session = req.getSession();
		String memid = (String)session.getAttribute("memid");
		
		System.out.println("/mypage/book memid : " + memid);
		
		//게시글 전체 조회
//		List<Book> bookList = bookService.getBookList();
		
		//로그인한 사람의 내역 조회
		List<Book> bookList = bookService.getMyBookList(memid);

		System.out.println("--- TEST ---");
		for(Book b : bookList)	System.out.println(b);
		
		//조회결과 MODEL값 전달
		req.setAttribute("bookList", bookList);

		//페이지 이동
		req.getRequestDispatcher("/WEB-INF/views/book.jsp").forward(req, resp);
		
	}
		
}
