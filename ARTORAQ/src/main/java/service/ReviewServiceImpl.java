package service;

import java.sql.Connection;
import java.util.List;

import common.JDBCTemplate;
import dao.ReviewDao;
import dao.ReviewDaoImpl;
import dto.Review;

public class ReviewServiceImpl implements ReviewService {

	private Connection conn = JDBCTemplate.getConnection();
	private ReviewDao reviewDao = new ReviewDaoImpl();
	
	@Override
	public int write(Review review) {
		
		
		return reviewDao.write(conn, review);
	}

	@Override
	public List<Review> seletAll(int boardno) {
		
		return reviewDao.selectByBoardno(conn, boardno);
	}

}
