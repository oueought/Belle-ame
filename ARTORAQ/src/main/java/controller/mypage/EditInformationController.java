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

@WebServlet("/editinformation")
public class EditInformationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//서비스 객체
	private MemberService memberService = new MemberServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//로그인 세션 값 가져오기
		HttpSession session = req.getSession();
		String memid = (String)session.getAttribute("memid");
		
		System.out.println("/editinformation memid : " + memid);

		req.getRequestDispatcher("/WEB-INF/views/mypage/editInformation.jsp").forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//한글 인코딩
		req.setCharacterEncoding("UTF-8");
		
		//전달 파라미터 얻어오기
		Member member = memberService.getMypageUpdate(req);
		
		System.out.println("member " + member);
		
		//업데이트 처리
		memberService.update(member);
		

		
		resp.sendRedirect("/mypage");
	}
	
}