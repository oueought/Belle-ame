package login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Customer;
import service.face.CustomerService;
import service.impl.CustomerServiceImpl;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//서비스 객체
	private CustomerService customerService = new CustomerServiceImpl();  
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//전달파라미터 로그인 정보 얻어오기
		//입력된 로그인 정보를 DTO로 반환
		Customer customer = customerService.getLoginCustomer(req);
		
		
		//로그인 인증
		//id/pw가 일치하는 행의 count로 처리
		boolean isLogin = customerService.login(customer);	
		
		//로그인 인증 성공
		if( isLogin ) {
			
			//세션 정보 객체
			HttpSession session = req.getSession();
			
			session.setAttribute("login", isLogin);
		}
		
		//로그인 성공시 메인페이지로 리다이렉트
		resp.sendRedirect("/main");
	}


}
