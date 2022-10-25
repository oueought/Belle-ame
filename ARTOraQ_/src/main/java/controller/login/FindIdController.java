package controller.login;

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

@WebServlet("/login/findid")
public class FindIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//서비스 객체
	private MemberService memberService = new MemberServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/views/login/findId.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//한글 인코딩
		req.setCharacterEncoding("UTF-8");
		
		//전달파라미터 가져오기
		Member member = memberService.getFindIdMember(req);
		
		//전달받은값에 해당하는 데이터 찾기
		boolean isFindId = memberService.findId(member);
		
		//인증 성공
		if(isFindId) {
			
			//사용자 정보 조회
			member = memberService.Idinfo(member);
			
			//세션정보 객체
			HttpSession session = req.getSession();
			
			session.setAttribute("findId", isFindId);
			session.setAttribute("memname", member.getMemname());
			session.setAttribute("memid", member.getMemid());
			session.setAttribute("memphone", member.getMemphone());
			
		}
		
		//아이디 찾기 결과화면으로 이동
		req.getRequestDispatcher("/WEB-INF/views/login/findIdRs.jsp").forward(req, resp);
		
		//세션 정보 삭제
		req.getSession().invalidate();
	}

}

