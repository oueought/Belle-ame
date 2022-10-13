package membership.service.face;

import javax.servlet.http.HttpServletRequest;

import dto.Member;

public interface MemberService {
	
	//--- 회원가입 ---
	
	/**
	 * 회원가입 정보 추출하기
	 * 
	 * @param req - 요청 정보 객체
	 * @return Member - 회원가입 정보 객체 (memid, mempw, memnick)
	 */
	public Member getJoinMember(HttpServletRequest req);

	/**
	 * 회원가입 처리
	 * 
	 * @param customer - 회원가입 정보 객체
	 */
	public void join(Member member);

	 	
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
