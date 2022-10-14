package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ReviewService;
import service.ReviewServiceImpl;



@WebServlet("/delete/review")
public class DeleteReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	private ReviewService reviewService = new ReviewServiceImpl();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int reid = Integer.parseInt(request.getParameter("reid"));
		System.out.println(reid);
		
		int result = reviewService.delete(reid); 
		
		response.getWriter().write(result+"");
		
	}

}
