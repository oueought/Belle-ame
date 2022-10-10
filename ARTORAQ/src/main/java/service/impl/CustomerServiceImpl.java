package service.impl;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dao.face.CustomerDao;
import dao.impl.CustomerDaoImpl;
import dto.Customer;
import service.face.CustomerService;

public class CustomerServiceImpl implements CustomerService {
	
	//DAO 객체
	private CustomerDao customerDao = new CustomerDaoImpl();
	
	//--- 로그인 ---
	//전달 파라미터 가져오기
	@Override
	public Customer getLoginCustomer(HttpServletRequest req) {
		
		Customer customer = new Customer();
		
		customer.setCustomer_id(req.getParameter("customer_id"));
		customer.setCustomer_pw(req.getParameter("customer_pw"));
		
		return customer;
	}
	
	//로그인 인증
	@Override
	public boolean login(Customer customer) {
		
		//로그인 인증 성공
		if( customerDao.selectCntCustomerByUseridUserpw(JDBCTemplate.getConnection(), customer) > 0 ) {
			return true;
		}
		
		//로그인 인증 실패
		return false;
	}
	
	//--- 아이디 찾기 ---
	//전달 파라미터 가져오기
	@Override
	public Customer getFindIdCustomer(HttpServletRequest req) {
		
		Customer customer = new Customer();
		
		customer.setCustomer_name(req.getParameter("customer_name"));
		customer.setCustomer_phone(req.getParameter("customer_phone"));
		
		return customer;
	}

	@Override
	public boolean findId(Customer customer) {
		
		//인증 성공
		if( customerDao.selectCntCustomerByUsernameUserphone(JDBCTemplate.getConnection(), customer) > 0 ) {
			return true;
		}
		//인증 실패
		return false;
	}
	
	@Override
	public Customer info(Customer customer) {
		return customerDao.selectCustomerByUsername(JDBCTemplate.getConnection(), customer);
	}
	


}
