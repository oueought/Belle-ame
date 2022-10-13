package service.impl;


import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;



import common.JDBCTemplate;
import dao.face.BoardDao;
import dao.impl.BoardDaoImpl;
import dto.Board;
import service.face.BoardService;

public class BoardServiceImpl implements BoardService {
	
	private BoardDao boardDao = new BoardDaoImpl();
//	private BoardDao commentDao = new BoardDaoImpl();

	
	
	// 게시물 전체 조회 
	@Override
	public List<Board> getList() {
		
		
		// 조회 결과 처리 
		return boardDao.selectAll(JDBCTemplate.getConnection());
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
		board.setLocation( req.getParameter("location")) ;
		
		Connection conn = JDBCTemplate.getConnection();
		
		if(boardDao.insert(conn, board) > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		} 
		
		System.out.println(board);
			

		
	}


	
	
	
	
	
	
	
	// -------------------------------- 댓글 추후에 추가 -------------------------------------------------
	
	
//	@Override
//	public int getComment(HttpServletRequest req) {
//		
//		Comment comment = new Comment();
//		
//		comment.setCmContents(req.getParameter("cmContents"));
//		comment.setReviewRating( Integer.parseInt(req.getParameter("reviewRating")));
//		
//		
//		// comment 값 확인
//		System.out.println(comment);
//		
//		int res = commentDao.insert(JDBCTemplate.getConnection(),comment);
//		return res;
//		
//	}

}
