package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Board;
import dto.UploadFile;
import service.face.BoardService;
import service.impl.BoardServiceImpl;


@WebServlet("/infoBoard")
public class InfoBoradController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	private BoardService boardService = new BoardServiceImpl(); 

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
				
		// 글 전체 조회
		List<Board> boardList = boardService.getList();
		
						
		// 조회 결과 전달
		req.setAttribute("boardList", boardList);
		
		
		
		//전달파라미터 저장 객체 얻기
		Board boardno = boardService.getBoardno(req);
		
		// ----------------------------------------------
		
		
				
		// 첨부파일 정보 조회
		List<UploadFile> uploadList = boardService.getFile();
		
		
		for (UploadFile a : uploadList)
		System.out.println("controller = " + a);

		// 첨부파일 정보를 MODEL값 전달
		req.setAttribute("uploadFile", uploadList);
				
		// View 지정
		req.getRequestDispatcher("/WEB-INF/views/page1/infoBoard.jsp").forward(req, resp);		
		
	}
	

}

