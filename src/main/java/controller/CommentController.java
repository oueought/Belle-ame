//package controller;
//
//import java.io.IOException;
//
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import service.face.BoardService;
//import service.impl.BoardServiceImpl;
//
//
//		---- 추후에 댓글 다시 추가 ---


//@WebServlet("/Comment")
//public class CommentController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//
//	// 서비스 객체
//	
//	private BoardService commentService = new BoardServiceImpl();
//	
//	
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		
//		System.out.println("/Comment [Get]");
//		
//		req.getRequestDispatcher("/WEB-INF/views/detailPage/tab_content03.jsp").forward(req, resp);
//	
//	}
//	
//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//	
//		System.out.println("/Comment [Post]");
//
//		// 요청 데이터의 한글 인코딩 방식 지정하기 : UTF-8
//		req.setCharacterEncoding("UTF-8");
//		
//		int result = commentService.getComment(req);
//		
//		System.out.println(result);
//		
//		
//	}
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//}