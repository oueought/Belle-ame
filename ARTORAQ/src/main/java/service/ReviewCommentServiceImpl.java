package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dao.ReviewCommentDao;
import dao.ReviewCommentDaoImpl;
import dto.Comment;

public class ReviewCommentServiceImpl implements ReviewCommentService {

	private ReviewCommentDao commentDao = new ReviewCommentDaoImpl();
	
	@Override
	public int getReviewCommnet(HttpServletRequest req) {
		
		Comment comment = new Comment();
		
		comment.setCmContents(req.getParameter("cmContents"));
		comment.setReviewRating( Integer.parseInt(req.getParameter("reviewRating")) );
		
		
		int res = commentDao.insert(JDBCTemplate.getConnection(), comment);
		return res;
	}

	@Override
	public List<Comment> commentAllByInfoId() {
			
		List<Comment> list = commentDao.commentAllByInfoId(JDBCTemplate.getConnection());
		
		return list;
	}

}
