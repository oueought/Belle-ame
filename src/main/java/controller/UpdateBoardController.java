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


@WebServlet("/UpdateBoardController")
public class UpdateBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	private BoardService boardService = new BoardServiceImpl();

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	
		System.out.println("BoardUpdateController doGet() - 전달파라미터 boardno : " + req.getParameter("boardno"));
		
		//전달파라미터 저장 객체 얻기
		Board boardno = boardService.getBoardno(req);
		System.out.println("BoardUpdateController doGet() - 전달파라미터 객체 : " + boardno);
		
		
		
		//상세보기 결과 조회
		Board updateBoard = boardService.view(boardno);
		System.out.println("BoardUpdateController doGet() - 상세보기 객체 : " + updateBoard);
		
		//조회결과 MODEL값 전달
		req.setAttribute("updateBoard", updateBoard);
	
	}
	
}
