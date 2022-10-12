package membership.service.impl;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dto.Customer;
import membership.service.face.CustomerService;
import membership.dao.face.CustomerDao;
import membership.dao.impl.CustomerDaoImpl;

public class CustomerServiceImpl implements CustomerService{
	
	//DAO 객체
		private CustomerDao customerDao = new CustomerDaoImpl();
		
		
		//--- 회원가입 ---

		@Override
		public Customer getJoinCustomer(HttpServletRequest req) {

			Customer customer = new Customer();

			customer.setCustomer_id( req.getParameter("customer_id") );
			customer.setCustomer_pw( req.getParameter("customer_pw") );
			customer.setCustomer_nickname( req.getParameter("customer_nickname") );
			customer.setCustomer_name( req.getParameter("customer_name"));
			customer.setCustomer_phone( req.getParameter("customer_phone"));
			customer.setCustomer_email( req.getParameter("customer_email"));
			customer.setCustomer_email( req.getParameter("customer_birth"));
			
			return customer;

		}

		@Override
		public void join(Customer customer) {
			
			Connection conn = JDBCTemplate.getConnection();
			
			if( customerDao.insert(conn, customer) > 0 ) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}
			
		}

		//--- 마이페이지 업데이트 ---
		
		//전달 파라미터 가져오기
		@Override
		public Customer getMypageUpdate(HttpServletRequest req) {
			
			Customer customer = new Customer();
			
			customer.setCustomer_pw(req.getParameter("customer_pw"));
			customer.setCustomer_nickname(req.getParameter("customer_nickname"));
			customer.setCustomer_phone(req.getParameter("customer_phone"));
			customer.setCustomer_email(req.getParameter("customer_email"));
			
			return customer;
		}

		@Override
		public void update(Customer customer) {
			
			Connection conn = JDBCTemplate.getConnection();
			
			if(customerDao.update(conn, customer) > 0) {
				JDBCTemplate.commit(conn);
			
			} else {
				JDBCTemplate.rollback(conn);
			}		
		}

}
