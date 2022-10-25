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
import dto.UploadFile;
import service.face.BoardReviewService;
import service.face.BoardService;
import service.impl.BoardReviewServiceImpl;
import service.impl.BoardServiceImpl;


@WebServlet("/search/info")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private BoardReviewService boardReviewService = new BoardReviewServiceImpl();

	private BoardService boardService = new BoardServiceImpl(); 
	
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		String result = req.getParameter("searchinfo");
		System.out.println(result);
		
		
		req.setAttribute("result", result);
		
		if(result != null || !result.equals("") ) {
			
		List<Board> searchList = new ArrayList<>();
			searchList = boardReviewService.search(result);
			System.out.println(searchList);
		
			req.setAttribute("list", searchList);
			
			List<UploadFile> uploadList = boardService.getFile();
			
			
			for (UploadFile a : uploadList)
			System.out.println("controller = " + a);

			// 첨부파일 정보를 MODEL값 전달
			req.setAttribute("uploadFile", uploadList);
			
		}else {
			resp.sendRedirect("/WEB-INF/views/page1/resultBoard.jsp");
		}

		
		
		req.getRequestDispatcher("/WEB-INF/views/page1/resultBoard.jsp").forward(req, resp);
			
		}
}

