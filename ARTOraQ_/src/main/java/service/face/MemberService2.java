package service.face;

import javax.servlet.http.HttpServletRequest;

import dto.Member;

public interface MemberService2 {
	
	//--- 회원가입 ---
	
	/**
	 * 회원가입 정보 추출하기
	 * 
	 * @param req - 요청 정보 객체
	 * @return Customer - 회원가입 정보 객체 (customer_id, customer_pw, customer_nickname)
	 */
	public Member getJoinCustomer(HttpServletRequest req);

	/**
	 * 회원가입 처리
	 * 
	 * @param customer - 회원가입 정보 객체
	 */
	public void join(Member customer);

	 	
	//--- 마이페이지 업데이트 ---
	/**
	 * 전달 파라미터 정보 추출하기
	 * 
	 * @param req - 요청 정보 객체
	 * @return Customer - 회원정보 업데이트 정보
	 */
	public Member getMypageUpdate(HttpServletRequest req);
	
	/**
	 * 업데이트 처리
	 * 
	 * @param customer - 업데이트 정보 객체
	 */
	public void update(Member customer);
	

	
	

}

