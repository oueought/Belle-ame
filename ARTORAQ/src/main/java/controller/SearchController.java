package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Board;
import service.BoardService;
import service.BoardServiceImpl;


@WebServlet("/search/info")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private BoardService boardService = new BoardServiceImpl();

	
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		String result = req.getParameter("searchinfo");
		System.out.println(result);
		
		
		req.setAttribute("result", result);
		
		if(result != null || !result.equals("") ) {
			
		List<Board> searchList = new ArrayList<>();
			searchList = boardService.search(result);
			System.out.println(searchList);
		
			req.setAttribute("list", searchList);
			
		}else {
			resp.sendRedirect("/WEB-INF/views/page1/resultBoard.jsp");
		}

		
		
		req.getRequestDispatcher("/WEB-INF/views/page1/resultBoard.jsp").forward(req, resp);
			
		}
}
