package membership.service.impl;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dto.Member;
import membership.service.face.MemberService;
import membership.dao.face.MemberDao;
import membership.dao.impl.MemberDaoImpl;

public class MemberServiceImpl implements MemberService{
	
	//DAO 객체
		private MemberDao memberDao = new MemberDaoImpl();
		
		
		//--- 회원가입 ---

		@Override
		public Member getJoinMember(HttpServletRequest req) {

			Member member = new Member();

			member.setMemid( req.getParameter("memid") );
			member.setMempw( req.getParameter("mempw") );
			member.setMemnick( req.getParameter("memnick") );
			member.setMemname( req.getParameter("memname"));
			member.setMemphone( req.getParameter("memphone"));
			member.setMememail( req.getParameter("mememail"));
			member.setMememail( req.getParameter("membirth"));
			
			return member;

		}

		@Override
		public void join(Member member) {
			
			Connection conn = JDBCTemplate.getConnection();
			
			if( memberDao.insert(conn, member) > 0 ) {
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
			member.setMemnick(req.getParameter("memnick"));
			member.setMemphone(req.getParameter("memphone"));
			member.setMememail(req.getParameter("mememail"));
			
			return member;
		}

		@Override
		public void update(Member member) {
			
			Connection conn = JDBCTemplate.getConnection();
			
			if(memberDao.update(conn, member) > 0) {
				JDBCTemplate.commit(conn);
			
			} else {
				JDBCTemplate.rollback(conn);
			}		
		}
		
		
		
	

}
