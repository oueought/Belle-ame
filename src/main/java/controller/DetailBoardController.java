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


@WebServlet("/detailBoardController")
public class DetailBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	private BoardService boardService = new BoardServiceImpl();
	
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("DtailController doGet() - 전달파라미터 boardno : " + req.getParameter("boardno"));
		
		//전달파라미터 저장 객체 얻기
		Board boardno = boardService.getBoardno(req);
		System.out.println("디테일Controller doGet() - 전달파라미터 객체 : " + boardno);
		
		
		
		//상세보기 결과 조회
		Board viewBoard = boardService.view(boardno);
		System.out.println("BoardViewController doGet() - 상세보기 객체 : " + viewBoard);
		
		//조회결과 MODEL값 전달
		req.setAttribute("viewBoard", viewBoard);

		req.getRequestDispatcher("/WEB-INF/views/detailPage/detailBoard.jsp").forward(req, resp);
	}
	
}
