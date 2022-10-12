package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;
import service.BoardServiceImpl;



@WebServlet("/write")
public class WriteBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//서비스 객체
	 private BoardService boardService = new BoardServiceImpl(); 
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/views/page1/write.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//작성글 삽입
		/* boardService.write(req); */
		
		System.out.println( req.getParameter("title") );
		System.out.println( req.getParameter("period") );
		System.out.println( req.getParameter("host") );
		System.out.println( req.getParameter("price") );

		//목록으로 리다이렉트
		resp.sendRedirect("/info/board");
		
	}
	
}
