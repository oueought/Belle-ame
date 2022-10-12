package membership.dao.face;

import java.sql.Connection;

import dto.Customer;

public interface CustomerDao {
	
	/**
	 * 회원정보 삽입
	 * 
	 * @param conn - DB연결 객체
	 * @param customer - 회원가입 정보 객체
	 * @return int - INSERT 수행 결과
	 */
	public int insert(Connection conn, Customer customer);

	//정보수정
	public int update(Connection conn, Customer customer);


	
}


