package service.impl;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import common.JDBCTemplate;
import dao.face.ReviewReviewDao;
import dao.impl.ReviewReviewDaoImpl;
import dto.Member;
import dto.Review;
import service.face.ReviewReviewService;

public class ReviewReviewServiceImpl implements ReviewReviewService {

	private Connection conn = JDBCTemplate.getConnection();
	private ReviewReviewDao reviewReviewDao = new ReviewReviewDaoImpl();
	
	
	
	@Override
	public int write( HttpServletRequest req ,  Review review) {
		
		HttpSession session = req.getSession();
		
		Member mem = new Member();
		String memid =  mem.setMemid((String) session.getAttribute("memid"));
		
		return reviewReviewDao.write(conn, review, memid );
	}

	@Override
	public List<Review> seletAll(int boardno) {
		
		return reviewReviewDao.selectByBoardno(conn, boardno);
	}

	@Override
	public int delete(int reid) {
		return reviewReviewDao.deleteByReid( conn , reid);
		
	}

	@Override
	   public int good(int reid) {

	      Connection conn = JDBCTemplate.getConnection();
	      
	      //좋아요 증가
	      
	      int res = reviewReviewDao.updateGood(conn, reid);
	      if( res > 0 ) {
	         JDBCTemplate.commit(conn);
	      } else {
	         JDBCTemplate.rollback(conn);
	      }
	      
	      return res;
	   }

}

