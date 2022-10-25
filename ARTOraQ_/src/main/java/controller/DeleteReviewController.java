package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.face.ReviewReviewService;
import service.impl.ReviewReviewServiceImpl;



@WebServlet("/delete/review")
public class DeleteReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	private ReviewReviewService reviewReviewService = new ReviewReviewServiceImpl();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int reid = Integer.parseInt(request.getParameter("reid"));
		System.out.println(reid);
		
		int result = reviewReviewService.delete(reid);
		
		response.getWriter().write(result+"");
		
	}

}


