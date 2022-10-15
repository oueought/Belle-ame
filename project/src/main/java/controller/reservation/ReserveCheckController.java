package controller.reservation;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ReserveCheckServlet
 */
@WebServlet(name = "ReserveCheck", urlPatterns = { "/reserveCheck.do" })
public class ReserveCheckController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   public ReserveCheckController() {
        
	   
    }
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html; charset=utf-8");
      String date = request.getParameter("datepicker");
      String countNum = request.getParameter("result");
      System.out.println("선택 날짜" +date);
      System.out.println("선택 인원" +countNum);
      RequestDispatcher rd = request.getRequestDispatcher("/");
      rd.forward(request, response);
      
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }

}