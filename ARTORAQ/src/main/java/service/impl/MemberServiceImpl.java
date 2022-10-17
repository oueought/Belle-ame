package service.impl;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dao.face.MemberDao;
import dao.impl.MemberDaoImpl;
import dto.Member;
import service.face.MemberService;

public class MemberServiceImpl implements MemberService {
	
	//DAO 객체
	private MemberDao memberDao = new MemberDaoImpl();
	
	//--- 로그인 ---
	//전달 파라미터 가져오기
	@Override
	public Member getLoginMember(HttpServletRequest req) {
		
		Member member = new Member();
		
		member.setMemid(req.getParameter("memid"));
		member.setMempw(req.getParameter("mempw"));
		
		return member;
	}
	
	//로그인 인증
	@Override
	public boolean login(Member member) {
		
		//로그인 인증 성공
		if( memberDao.selectCntMemberByUseridUserpw(JDBCTemplate.getConnection(), member) > 0 ) {
			return true;
		}
		
		//로그인 인증 실패
		return false;
	}
	
	//--- 아이디 찾기 ---
	//전달 파라미터 가져오기
	@Override
	public Member getFindIdMember(HttpServletRequest req) {
		
		Member member = new Member();
		
		member.setMemname(req.getParameter("memname"));
		member.setMemphone(req.getParameter("memphone"));
		
		return member;
	}

	@Override
	public boolean findId(Member member) {
		
		//인증 성공
		if( memberDao.selectCntMemberByUsernameUserphone(JDBCTemplate.getConnection(), member) > 0 ) {
			return true;
		}
		//인증 실패
		return false;
	}
	
	@Override
	public Member Idinfo(Member member) {
		return memberDao.selectMemberByUsername(JDBCTemplate.getConnection(), member);
	}
	
	//--- 비밀번호 찾기 ---
	//전달 파라미터 가져오기
	@Override
	public Member getFindPwMember(HttpServletRequest req) {
		
		Member member = new Member();
		
		member.setMemid(req.getParameter("memid"));
		member.setMemphone(req.getParameter("memphone"));
		
		return member;
	}

	@Override
	public boolean findPw(Member member) {
		
		//인증 성공
		if( memberDao.selectCntMemberByUseridUserphone(JDBCTemplate.getConnection(), member) > 0 ) {
			return true;
		}
		//인증 실패
		return false;
		
	}

	@Override
	public Member Pwinfo(Member member) {
		return memberDao.selectMemberByUserid(JDBCTemplate.getConnection(), member);
	}

}
