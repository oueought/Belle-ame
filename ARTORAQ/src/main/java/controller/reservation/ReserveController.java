package controller.reservation;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reservation/reserve/reserve")
public class ReserveController extends HttpServlet {
   private static final long serialVersionUID = 1L;

    
@Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
   
      req.getRequestDispatcher("/WEB-INF/views/reservation/reserve/reserve.jsp").forward(req, resp);

   }
   

   @Override
      protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

      
   
   }
}