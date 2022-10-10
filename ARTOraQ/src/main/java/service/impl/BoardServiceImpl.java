package service.impl;


import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dao.face.BoardDao;
import dao.impl.BoardDaoImpl;
import dto.Comment;
import service.face.BoardService;

public class BoardServiceImpl implements BoardService {
	
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

	
	




	
		

		
}
