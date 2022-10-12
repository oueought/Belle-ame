package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Comment;
import service.ReviewCommentService;
import service.ReviewCommentServiceImpl;


@WebServlet("/comment")
public class CommentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private ReviewCommentService reviewCommentService = new ReviewCommentServiceImpl();
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//게시글 번호로 조회된 모든 리뷰 데이터 받아와야 하나 현재 게시글번호 알수 없음에 전체 댓글 데이터 조회 
		List<Comment> list = reviewCommentService.commentAllByInfoId();
		req.setAttribute("list", list);
		req.getRequestDispatcher("/WEB-INF/views/page1/comment.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/comment [POST]");
		
		resp.setContentType("text/html; charset=UTF-8");

		
		reviewCommentService.getReviewCommnet(req);
		
		List<Comment> list = reviewCommentService.commentAllByInfoId();
		req.setAttribute("list", list);
//		req.getRequestDispatcher("/WEB-INF/views/page1/comment.jsp").forward(req, resp);
		
		//페이지 새로고침
		resp.sendRedirect("/DetailBoardController");
		
		
		
		
	}
}
