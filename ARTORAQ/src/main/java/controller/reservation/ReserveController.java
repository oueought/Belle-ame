package controller.reservation;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.reserve.Board;
import dto.reserve.Member;
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
			
			 
			Member member = new Member();
						
			
			Board board = reserveService.boardInfoByBoardNo(boardNo);
			
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
		try {
		//요청 데이터의 한글 인코딩 방식 지정하기 : UTF-8
		req.setCharacterEncoding("UTF-8");
		
		//전달 파라미터를 Reserve객체에 저장한다 - ReserveService 객체 이용
		
		//Reserve reserve = new Reserve();
		
		String no = req.getParameter("no");
		
		String date = req.getParameter("date");
		
		int sum = Integer.parseInt((String)req.getParameter("sum"));
		
		int price = Integer.parseInt((String)req.getParameter("price"));
		 
		int amount = Integer.parseInt((String)req.getParameter("amount"));
		
		// 반드시 세션에서 꺼내온 멤버 아이디로 바꿔줘야함! 꼭!!!!
		String id = "apple";
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat newf = new SimpleDateFormat("yy/MM/dd");
		
		//Date formatDate = sdf.parse(date);
		//String bookdate = newf.format(date);
		
		//SimpleDateFormat dtFormat = new SimpleDateFormat("yyyyMMdd");
		//SimpleDateFormat newDtFormat = new SimpleDateFormat("yyyy-MM-dd");
		// String 타입을 Date 타입으로 변환
		Date formatDate = sdf.parse(date);
		// Date타입의 변수를 새롭게 지정한 포맷으로 변환
		String bookdate = newf.format(formatDate);
		
		
		Reserve reserve = new Reserve();
		
		reserve.setAmount(amount);
		reserve.setBoardno(no);
		reserve.setBookprice(sum);
		reserve.setPrice(price);
		reserve.setMemid(id);
		reserve.setBookdateSt(bookdate);
		
		reserveService.reserve(reserve);
		
		//전달 파라미터를 저장한 dto객체를 db에 입력한다 - ReserveService 객체 이용
		
		//db에 입력된 값을 jsp view에 전달하기 - HttpServletRequest객체 이용
		
		//jsp view지정하고 응답하기 - RequestDispatcher 객체 이용 .forward() 호출
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
