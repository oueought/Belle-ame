package service.impl;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dao.face.MemberDao2;
import dao.impl.MemberDaoImpl2;
import dto.Member;
import service.face.MemberService2;

public class MamberServiceImpl2 implements MemberService2{
	
	//DAO 객체
		private MemberDao2 memberDao2 = new MemberDaoImpl2();
		
		
		//--- 회원가입 ---

		@Override
		public Member getJoinCustomer(HttpServletRequest req) {

			Member member = new Member();

			member.setMemid( req.getParameter("memid") );
			member.setMempw( req.getParameter("mempw") );
			member.setMemnick( req.getParameter("nickname") );
			member.setMemname( req.getParameter("memname"));
			member.setMemphone( req.getParameter("memphone"));
			member.setMememail( req.getParameter("mememail"));
			member.setMembirth( req.getParameter("membirth"));
			
			return member;

		}

		@Override
		public void join(Member member) {
			
			Connection conn = JDBCTemplate.getConnection();
			
			if( memberDao2.insert(conn, member) > 0 ) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}
			
		}

		//--- 마이페이지 업데이트 ---
		//전달 파라미터 가져오기
		@Override
		public Member getMypageUpdate(HttpServletRequest req) {
			
			Member member = new Member();
			
			member.setMempw(req.getParameter("mempw"));
			member.setMemnick(req.getParameter("nickname"));
			member.setMemphone(req.getParameter("memphone"));
			member.setMememail(req.getParameter("mememail"));
			
			return member;
		}

		@Override
		public void update(Member member) {
			
			Connection conn = JDBCTemplate.getConnection();
			
			if(memberDao2.update(conn, member) > 0) {
				JDBCTemplate.commit(conn);
			
			} else {
				JDBCTemplate.rollback(conn);
			}		
		}

}


