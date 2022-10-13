package service.face;

import javax.servlet.http.HttpServletRequest;

import dto.Member;

public interface MemberService {
	
	//--- 로그인 ---
	/**
	 * 로그인 정보 추출하기
	 * 
	 * @param req - 요청 정보 객체
	 * @return Member - 로그인 정보(id, pw)
	 */
	public Member getLoginMember(HttpServletRequest req);
	
	/**
	 * 로그인 인증 처리
	 * 
	 * @param member - 로그인 정보(id, pw)
	 * @return boolean - true:인증성공, false: 인증실패
	 */
	public boolean login(Member member);
	
	// --- 아이디 찾기 ---
	
	/**
	 * 아이디찾기 정보 추출하기
	 * 
	 * @param req - 요청 정보 객체
	 * @return Member - 아이디찾기 정보
	 */
	public Member getFindIdMember(HttpServletRequest req);
	
	/**
	 * 인증 처리
	 * 
	 * @param member - 정보(name, phone)
	 * @return boolean - true: 성공, false: 실패
	 */
	public boolean findId(Member member);
	
	/**
	 * 유저 정보 가져오기
	 * 
	 * @param member - 조회할 회원 이름을 가진 객체
	 * @return Member - 조회된 회원 정보(name, phone, id)
	 */
	public Member Idinfo(Member member);
	
	//--- 비밀번호 찾기 ---
	/**
	 * 아이디찾기 정보 추출하기
	 * 
	 * @param req - 요청 정보 객체
	 * @return Member - 비밀번호찾기 정보
	 */
	public Member getFindPwMember(HttpServletRequest req);
	
	/**
	 * 인증 처리
	 * 
	 * @param member - 정보(id, phone)
	 * @return boolean - true: 성공, false: 실패
	 */
	public boolean findPw(Member member);
	
	/**
	 * 유저 정보 가져오기
	 * 
	 * @param member - 조회할 회원 아이디를 가진 객체
	 * @return Member - 조회된 회원 정보(id, phone, pw)
	 */
	public Member Pwinfo(Member member);
	
	//--- 마이페이지 업데이트 ---
	/**
	 * 전달 파라미터 정보 추출하기
	 * 
	 * @param req - 요청 정보 객체
	 * @return Member - 회원정보 업데이트 정보
	 */
	public Member getMypageUpdate(HttpServletRequest req);
	
	/**
	 * 업데이트 처리
	 * 
	 * @param member - 업데이트 정보 객체
	 */
	public void update(Member member);
	

	
	

}
