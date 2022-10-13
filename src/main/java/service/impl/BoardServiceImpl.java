package service.impl;


import java.sql.Connection;


import javax.servlet.http.HttpServletRequest;



import common.JDBCTemplate;
import dao.face.BoardDao;
import dao.impl.BoardDaoImpl;
import dto.Board;
import dto.Comment;
import service.face.BoardService;

public class BoardServiceImpl implements BoardService {
	
	private BoardDao boardDao = new BoardDaoImpl();
	private BoardDao commentDao = new BoardDaoImpl();

	@Override
	public int getComment(HttpServletRequest req) {
		
		Comment comment = new Comment();
		
		comment.setCmContents(req.getParameter("cmContents"));
		comment.setReviewRating( Integer.parseInt(req.getParameter("reviewRating")));
		
		
		// comment 값 확인
		System.out.println(comment);
		
		int res = commentDao.insert(JDBCTemplate.getConnection(),comment);
		return res;
		
	}

	@Override
	public void write(HttpServletRequest req) {
		
		// --- 첨부파일 없이 게시글 작성 처리 ---
		
		Board board = new Board();
		
		
		
		// 제목 처리
		board.setTitle( req.getParameter("title"));
		
		// 본문 처리
		board.setContent( req.getParameter("content"));
		
		// 기간 처리
		board.setPeriod( req.getParameter("period"));
		
		// 가격 처리
		board.setPrice( Integer.parseInt(req.getParameter("price")));
	
		// 관리자 ID처리 (추가예정)
		board.setAdminId((String) req.getSession().getAttribute("adminId")) ;
		
		Connection conn = JDBCTemplate.getConnection();
		
		if(boardDao.insert(conn, board) > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		} 
		
		System.out.println(board);
			
			
				
//		// 게시글 번호 생성
//		int infoId = boardDao.selectNextInfoId(conn);
//		
//		// 게시글 번호 삽입
//		board.setInfoId(infoId);
//		
//		// 관리자 ID처리
//		board.setAdminId((String) req.getSession().getAttribute("adminId")) ;
//		
//		
//		if(boardDao.insert(conn, board) > 0) {
//			JDBCTemplate.commit(conn);
//		} else {
//			JDBCTemplate.rollback(conn);
//		} 
			

		
	}
		
}
