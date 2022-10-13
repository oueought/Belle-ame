package login;

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

@WebServlet("/login/findpw")
public class FindPwController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//서비스 객체
	private MemberService memberService = new MemberServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/views/login/findPw.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//전달파라미터 가져오기
		Member member = memberService.getFindPwMember(req);
				
		//전달받은값에 해당하는 데이터 찾기
		boolean isFindPw = memberService.findPw(member);
		
		//인증 성공
		if(isFindPw) {
			
			//사용자 정보 조회
			member = memberService.Pwinfo(member);
			
			//세션정보 객체
			HttpSession session = req.getSession();
			
			session.setAttribute("findPw", isFindPw);
			session.setAttribute("memid", member.getMemid());
			session.setAttribute("memphone", member.getMemphone());
			session.setAttribute("mempw", member.getMempw());
			
		}
		
		//비밀번호 찾기 결과화면으로 이동
		req.getRequestDispatcher("/WEB-INF/views/login/findPwRs.jsp").forward(req, resp);
		
		//세션 정보 삭제
		req.getSession().invalidate();
	}

}
