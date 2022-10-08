package membership.dao.face;

import java.sql.Connection;

import dto.Customer;

public interface CustomerDao {
	
	/**
	 * customer_id와 customer_pw를 동시에 만족하는 회원의 수를 조회한다
	 * 	-> 로그인 인증값으로 사용한다
	 * 
	 * @param conn - DB연결 객체
	 * @param customerr - 조회할 회원의 정보
	 * @return int - 0: 존재하지 않는 회원, 1: 존재하는 회원
	 */
	public int selectCntCustomerByCustomer_idCustomer_pw(Connection conn, Customer customer);

	/**
	 * customer_id를 이용해 회원정보 조회하기
	 * 
	 * @param conn - DB연결 객체
	 * @param customer - 조회할 customer_id를 가진 객체
	 * @return customer - 조회된 회원 정보
	 */
	public Customer selectCustomerByCustomer_id(Connection conn, Customer customer);

	/**
	 * 회원정보 삽입
	 * 
	 * @param conn - DB연결 객체
	 * @param customer - 회원가입 정보 객체
	 * @return int - INSERT 수행 결과
	 */
	public int insert(Connection conn, Customer customer);

	Customer selectCustomerByCustomer_id1(Connection conn, Customer customer);

	int insert1(Connection conn, Customer customer);

	int selectCntCustomerByCustomeridCustomerpw(Connection conn, Customer customer);

	Customer selectCustomerrByCustomerid(Connection conn, Customer customer);


}


