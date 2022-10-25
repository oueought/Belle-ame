package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.face.BoardReviewService;
import service.impl.BoardReviewServiceImpl;


@WebServlet("/heart")
public class HeartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private BoardReviewService boardReviewService = new BoardReviewServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/views/wishlist.jsp").forward(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String boardno = req.getParameter("boardno");
		System.out.println(boardno);
		
		int result = boardReviewService.cart(req, boardno);
		
		resp.getWriter().write(result+"");
		
	}
}
