package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.face.ReviewReviewService;
import service.impl.ReviewReviewServiceImpl;


@WebServlet("/good")
public class GoodController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
   private ReviewReviewService reviewReviewService = new ReviewReviewServiceImpl();
   
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      int reid = Integer.parseInt(req.getParameter("reid"));
      System.out.println(reid);
      
      int result = reviewReviewService.good(reid);
      
      System.out.println(result);
      resp.getWriter().write(result+"");
   
   }

}