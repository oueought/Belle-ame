package mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Member;
import service.face.MemberService;
import service.impl.MemberServiceImpl;

@WebServlet("/mypage/edit")
public class MypageEditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//서비스 객체
	private MemberService customerService = new MemberServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/views/mypage/editInformation.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//한글 인코딩
		req.setCharacterEncoding("UTF-8");
		
		//전달 파라미터 얻어오기
		Member customer = customerService.getMypageUpdate(req);
		
//		//세션값에 해당하는 회원 정보 저장
//		req.setAttribute("updatePw", customer.getCustomer_pw());
//		req.setAttribute("updateNickname", customer.getCustomer_nickname());
//		req.setAttribute("updatePhone", customer.getCustomer_phone());
//		req.setAttribute("updateEmail", customer.getCustomer_email());
//		
		//업데이트 처리
		customerService.update(customer);
		
		resp.sendRedirect("/mypage");
	}
}