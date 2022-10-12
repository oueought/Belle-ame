package membership.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Customer;
import membership.service.face.CustomerService;
import membership.service.impl.CustomerServiceImpl;


@WebServlet("/join")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//서비스 객체
	private CustomerService customerService = new CustomerServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/WEB-INF/views/membershipJoin.jsp").forward(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		req.setCharacterEncoding("UTF-8");
		
		//회원가입 전달파라미터 추출하기
		Customer customer = customerService.getJoinCustomer(req);
		

		//회원가입 처리
		customerService.join(customer);
		

		//로그인으로 리다이렉트
		resp.sendRedirect("/login");
		





	}

}
