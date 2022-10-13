package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dto.Review;
import service.ReviewService;
import service.ReviewServiceImpl;



@WebServlet("/Comment")
public class CommentController extends HttpServlet {
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

		
		BufferedReader br = req.getReader();
		String reqData = br.readLine();
		Gson gson = new Gson();
		Review review = gson.fromJson(reqData, Review.class);
		
		System.out.println(review);
		
		int result = reviewService.write(review);
		

		
	}
	
	
	
	
	
	
	
	
	
	
	
	
}