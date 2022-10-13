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
