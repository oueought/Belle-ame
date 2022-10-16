package dao.reserve;

import java.sql.Connection;

import dto.reserve.Member;

public interface MemberDao {
	
	/**
	 * 회원정보 삽입
	 * 
	 * @param conn - DB연결 객체
	 * @param member - 회원가입 정보 객체
	 * @return int - INSERT 수행 결과
	 */
	public int insert(Connection conn, Member member);

	/**
	 * 회원정보 업데이트
	 * 
	 * @param conn - DB연결 객체
	 * @param member - 업데이트 정보 객체
	 * @return int - UPDATE 수행 결과
	 */
	public int update(Connection conn, Member member);
	
		
		

	}




