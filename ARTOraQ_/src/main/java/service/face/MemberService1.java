package service.face;

import javax.servlet.http.HttpServletRequest;

import dto.Member;

public interface MemberService1 {
	
	//--- 로그인 ---
	/**
	 * 로그인 정보 추출하기
	 * 
	 * @param req - 요청 정보 객체
	 * @return Customer - 로그인 정보(id, pw)
	 */
	public Member getLoginCustomer(HttpServletRequest req);
	
	/**
	 * 로그인 인증 처리
	 * 
	 * @param customer - 로그인 정보(id, pw)
	 * @return boolean - true:인증성공, false: 인증실패
	 */
	public boolean login(Member customer);
	
	// --- 아이디 찾기 ---
	
	/**
	 * 아이디찾기 정보 추출하기
	 * 
	 * @param req - 요청 정보 객체
	 * @return Customer - 아이디찾기 정보
	 */
	public Member getFindIdCustomer(HttpServletRequest req);
	
	/**
	 * 인증 처리
	 * 
	 * @param customer - 정보(name, phone)
	 * @return boolean - true: 성공, false: 실패
	 */
	public boolean findId(Member customer);
	
	/**
	 * 유저 정보 가져오기
	 * 
	 * @param customer - 조회할 회원 이름을 가진 객체
	 * @return Customer - 조회된 회원 정보(name, phone, id)
	 */
	public Member Idinfo(Member customer);
	
	//--- 비밀번호 찾기 ---
	/**
	 * 아이디찾기 정보 추출하기
	 * 
	 * @param req - 요청 정보 객체
	 * @return Customer - 비밀번호찾기 정보
	 */
	public Member getFindPwCustomer(HttpServletRequest req);
	
	/**
	 * 인증 처리
	 * 
	 * @param customer - 정보(id, phone)
	 * @return boolean - true: 성공, false: 실패
	 */
	public boolean findPw(Member customer);
	
	/**
	 * 유저 정보 가져오기
	 * 
	 * @param customer - 조회할 회원 아이디를 가진 객체
	 * @return Customer - 조회된 회원 정보(id, phone, pw)
	 */
	public Member Pwinfo(Member customer);
	

}

