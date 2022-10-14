package MemberLogin;

import java.sql.Connection;

import dto.Member;

public interface MemberDao {
	
	//--- 로그인 ---
	/**
	 * member id와 member pw를 동시에 만족하는 회원의 수를 조회한다
	 *  -> 로그인 인증값으로 사용한다
	 * 
	 * @param conn - DB연결 객체
	 * @param member - 조회할 회원의 정보
	 * @return int - 0: 존재하지 않는 회원, 1: 존재하는 회원
	 */
	public int selectCntMemberByUseridUserpw(Connection conn, Member member);
	
	//--- 아이디 찾기 ---
	/**
	 * member name과 member phone을 동시에 만족하는 회원의 수를 조회한다
	 * -> 아이디찾기 인증값으로 사용한다
	 * 
	 * @param conn - DB연결 객체
	 * @param member - 조회할 회원 정보
	 * @return int - 0:존재하지 않는 회원, 1:존재하는 회원
	 */
	public int selectCntMemberByUsernameUserphone(Connection conn, Member member);
	
	/**
	 * member name을 이용해 회원정보 조회하기
	 * 
	 * @param conn - DB연결객체
	 * @param member - 조회할 member name을 가진 객체
	 * @return Member - 조회된 회원 정보
	 */
	public Member selectMemberByUsername(Connection conn, Member member);
	
	//--- 비밀번호 찾기 ---
	/**
	 * member id과 member phone을 동시에 만족하는 회원의 수를 조회한다
	 * 
	 * @param conn - DB연결 객체
	 * @param member - 조회할 회원 정보
	 * @return int - 0:존재하지 않는 회원, 1:존재하는 회원
	 */
	public int selectCntMemberByUseridUserphone(Connection conn, Member member);
	
	/**
	 * member id을 이용해 회원정보 조회하기
	 * 
	 * @param conn - DB연결객체
	 * @param member - 조회할 member id를 가진 객체
	 * @return Member - 조회된 회원 정보
	 */
	public Member selectMemberByUserid(Connection conn, Member member);
	
	/**
	 * 회원정보 업데이트
	 * 
	 * @param conn - DB연결 객체
	 * @param member - 업데이트 정보 객체
	 * @return int - UPDATE 수행 결과
	 */
	public int update(Connection conn, Member member);
	

}
