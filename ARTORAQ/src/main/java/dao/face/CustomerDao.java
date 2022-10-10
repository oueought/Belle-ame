package dao.face;

import java.sql.Connection;

import dto.Customer;

public interface CustomerDao {
	
	/**
	 * userid와 userpw를 동시에 만족하는 회원의 수를 조회한다
	 *  -> 로그인 인증값으로 사용한다
	 * 
	 * @param conn - DB연결 객체
	 * @param customer - 조회할 회원의 정보
	 * @return int - 0: 존재하지 않는 회원, 1: 존재하는 회원
	 */
	public int selectCntCustomerByUseridUserpw(Connection conn, Customer customer);
	
	
	//아이디 찾기
	/**
	 * username, userphone을 동시에 만족하는 회원의 수를 조회한다
	 * 
	 * @param conn - DB연결 객체
	 * @param customer - 조회할 회원의 정보
	 * @return int - 0: 존재하지 않는 회원, 1:존재하는 회원 
	 */
	public int selectCntCustomerByUsernameUserphone(Connection conn, Customer customer);
	
	/**
	 * name, phone을 이용해 회원정보 조회하기
	 * 
	 * @param connection - DB연결 객체
	 * @param customer - 조회할 username, userphone을 가진 객체
	 * @return Customer - 조회된 회원 정보(userid)
	 */
	public Customer selectCustomerByUsername(Connection conn, Customer customer);


}
