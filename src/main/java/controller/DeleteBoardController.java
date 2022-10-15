package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Board;
import service.face.BoardService;
import service.impl.BoardServiceImpl;

@WebServlet("/deleteController")
public class DeleteBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private BoardService boardService = new BoardServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		/*
		 * req.getRequestDispatcher("/WEB-INF/views/page1/write.jsp").forward(req,
		 * resp);
		 */
		
		Board board = boardService.getBoardno(req);
		
		boardService.delete(board);
		
		resp.sendRedirect("/InfoBoardController");
	}


}
