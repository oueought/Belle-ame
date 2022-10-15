package controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dto.Review;
import service.ReviewService;
import service.ReviewServiceImpl;



@WebServlet("/Search")
public class CommentSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	// 서비스 객체
	
	private ReviewService reviewService = new ReviewServiceImpl();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("/Comment [Get]");
		
		req.getRequestDispatcher("/WEB-INF/views/detailPage/tab_content03.jsp").forward(req, resp);
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/Comment [Post]");

		int infoId = Integer.parseInt(req.getParameter("infoId"));
		System.out.println(infoId); //게시글 번호 입력 성공시 게시글 번호로 댓글 조회 

		
		List<Review> list = new ArrayList<>();
		
		list = reviewService.seletAll(infoId);
		for(Review e : list)	System.out.println("e = " + e);
		
		req.setAttribute("list", list);
		req.getRequestDispatcher("/WEB-INF/views/comment/comment.jsp").forward(req, resp);

		
	}
	
	
	
	
	
	
	
	
	
	
	
	
}