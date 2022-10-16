package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.face.BoardService;
import service.impl.BoardServiceImpl;
import dto.Board;


@WebServlet("/listBoard")
public class ListBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//Service 객체 생성
		private BoardService boardSerivce = new BoardServiceImpl();
	
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			//게시글 전체 조회
			List<Board> boardList = boardSerivce.getList();
			
		
			//조회결과 MODEL값 전달
			req.setAttribute("boardList", boardList);
			
			//View 지정 및 응답
			req.getRequestDispatcher("/WEB-INF/views/page1/infoBoard.jsp").forward(req, resp);
		}

}
