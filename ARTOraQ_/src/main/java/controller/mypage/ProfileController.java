package controller.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.join.Member;
import service.join.MemberService;
import service.join.MemberServiceImpl;

@WebServlet("/mypage/profile")
public class ProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//서비스 객체
	private MemberService memberService = new MemberServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/views/mypage/profile.jsp").forward(req, resp);
		
		//로그인 세션값 가져오기
		HttpSession session = req.getSession();
		String memid = (String)session.getAttribute("memid");
		
		System.out.println("/mypage/book memid : " + memid);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//한글 인코딩
		req.setCharacterEncoding("UTF-8");
		
		//마이페이지 화면으로 이동
		req.getRequestDispatcher("/WEB-INF/views/mypage/mypage.jsp").forward(req, resp);
		
	}

}
