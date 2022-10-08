package membership.service.impl;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dto.Customer;
import membership.service.face.CustomerService;
import membership.dao.face.CustomerDao;
import membership.dao.impl.CustomerDaoImpl;
import membership.service.face.CustomerService;

public class CustomerServiceImpl implements CustomerService{
	
	//DAO 객체
		private CustomerDao customerDao = new CustomerDaoImpl();
		
		@Override
		public Customer getLoginCustomer(HttpServletRequest req) {
			
			Customer customer = new Customer();

			customer.setCustomer_id( req.getParameter("customerid") );
			customer.setCustomer_pw( req.getParameter("customerpw") );
			
			return customer;
		}

		@Override
		public boolean login(Customer customer) {

			//로그인 인증 성공
			if( customerDao.selectCntCustomerByCustomeridCustomerpw(JDBCTemplate.getConnection(), customer) > 0 ) {
				return true;
			}
			
			//로그인 인증 실패
			return false;
		}

		@Override
		public Customer info(Customer customer) {
			return customerDao.selectCustomerByCustomer_id(JDBCTemplate.getConnection(), customer);
		}
		
		@Override
		public Customer getJoinCustomer(HttpServletRequest req) {

			Customer customer = new Customer();

			customer.setCustomer_id( req.getParameter("customerid") );
			customer.setCustomer_pw( req.getParameter("customerpw") );
			customer.setCustomer_nickname( req.getParameter("customernickname") );
			
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

}
