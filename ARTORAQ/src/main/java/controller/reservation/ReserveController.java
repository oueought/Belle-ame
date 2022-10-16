package controller.reservation;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.reserve.Board;
import dto.reserve.Reserve;
import service.reserve.ReserveService;
import service.reserve.ReserveServiceImpl;

@WebServlet("/reservation/reserve/reserve")
public class ReserveController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   //서비스 객체
   private ReserveService reserveService = new ReserveServiceImpl(); 
    
   @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String boardNo = (String)req.getParameter("board");
			System.out.println("boardNo :"+ boardNo);
			
			Board board = reserveService.getBoardByBoardNo(boardNo);
			
			System.out.println("board "+ board);
			
			req.setAttribute("board", board);
			
			//jsp포워드
			req.getRequestDispatcher("/WEB-INF/views/reservation/reserve/reserve.jsp").forward(req, resp);
		}catch(Exception e) {
			e.printStackTrace();
		}
	

	}
   

   
	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//요청 데이터의 한글 인코딩 방식 지정하기 : UTF-8
		req.setCharacterEncoding("UTF-8");
		
		//전달 파라미터를 Reserve객체에 저장한다 - ReserveService 객체 이용
		
		Reserve reserve = new Reserve();
		
		reserve.setBook_acount(Integer.parseInt(req.getParameter("book_acount")));
		
		
		//전달 파라미터를 저장한 dto객체를 db에 입력한다 - ReserveService 객체 이용
		
		//db에 입력된 값을 jsp view에 전달하기 - HttpServletRequest객체 이용
		
		//jsp view지정하고 응답하기 - RequestDispatcher 객체 이용 .forward() 호출
		
	}
}
