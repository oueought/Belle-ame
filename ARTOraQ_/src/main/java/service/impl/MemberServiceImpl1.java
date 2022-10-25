package service.impl;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dao.face.MemberDao1;
import dao.impl.MemberDaoImpl1;
import dto.Member;
import service.face.MemberService1;

public class MemberServiceImpl1 implements MemberService1 {
	
	//DAO 객체
	private MemberDao1 memberDao1 = new MemberDaoImpl1();
	
	//--- 로그인 ---
	//전달 파라미터 가져오기
	@Override
	public Member getLoginCustomer(HttpServletRequest req) {
		
		Member customer = new Member();
		
		customer.setMemid(req.getParameter("memid"));
		customer.setMempw(req.getParameter("mempw"));
		
		return customer;
	}
	
	//로그인 인증
	@Override
	public boolean login(Member customer) {
		
		//로그인 인증 성공
		if( memberDao1.selectCntCustomerByUseridUserpw(JDBCTemplate.getConnection(), customer) > 0 ) {
			return true;
		}
		
		//로그인 인증 실패
		return false;
	}
	
	//--- 아이디 찾기 ---
	//전달 파라미터 가져오기
	@Override
	public Member getFindIdCustomer(HttpServletRequest req) {
		
		Member member = new Member();
		
		member.setMemname(req.getParameter("memname"));
		member.setMemphone(req.getParameter("memphone"));
		
		return member;
	}

	@Override
	public boolean findId(Member member) {
		
		//인증 성공
		if( memberDao1.selectCntCustomerByUsernameUserphone(JDBCTemplate.getConnection(), member) > 0 ) {
			return true;
		}
		//인증 실패
		return false;
	}
	
	@Override
	public Member Idinfo(Member member) {
		return memberDao1.selectCustomerByUsername(JDBCTemplate.getConnection(), member);
	}
	
	//--- 비밀번호 찾기 ---
	//전달 파라미터 가져오기
	@Override
	public Member getFindPwCustomer(HttpServletRequest req) {
		
		Member member = new Member();
		
		member.setMemid(req.getParameter("memid"));
		member.setMemphone(req.getParameter("memphone"));
		
		return member;
	}

	@Override
	public boolean findPw(Member member) {
		
		//인증 성공
		if( memberDao1.selectCntCustomerByUseridUserphone(JDBCTemplate.getConnection(), member) > 0 ) {
			return true;
		}
		//인증 실패
		return false;
		
	}

	@Override
	public Member Pwinfo(Member member) {
		return memberDao1.selectCustomerByUserid(JDBCTemplate.getConnection(), member);
	}



}

