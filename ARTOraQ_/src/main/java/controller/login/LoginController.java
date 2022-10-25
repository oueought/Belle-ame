package controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.join.Member;
import service.join.MemberService;
import service.join.MemberServiceImpl;


@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//서비스 객체
	private MemberService memberService = new MemberServiceImpl();  
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//전달파라미터 로그인 정보 얻어오기
		//입력된 로그인 정보를 DTO로 반환
		Member member = memberService.getLoginMember(req);
		
		System.out.println("member login "+ member);
		
		//로그인 인증
		//id/pw가 일치하는 행의 count로 처리
		boolean isLogin = memberService.login(member);	
		
		//로그인 인증 성공
		if( isLogin ) {
			System.out.println("member login Success");
			//세션 정보 객체
			HttpSession session = req.getSession();
			session.setAttribute("login", isLogin);
			
			//아이디세션
			session.setAttribute("memid", member.getMemid());
		} else {
	         req.setAttribute("msg", "아이디와 비밀번호를 확인해주세요");
	         req.setAttribute("url", "/login");
	         
	         req.getRequestDispatcher("/WEB-INF/views/login/loginFail.jsp").forward(req, resp);
	         return;
			
		}
		
		//로그인 성공시 메인페이지로 리다이렉트
		resp.sendRedirect("/artoraq/main");
	}

}
