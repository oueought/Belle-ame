package dao.face;

import java.sql.Connection;
import java.util.List;

import dto.Review;

public interface ReviewReviewDao {

	/**
	 * 댓글작성
	 * 
	 * @param conn
	 * @param review
	 * @param memid 
	 * @return
	 */
	public int write(Connection conn, Review review, String memid);

	/**
	 * 게시글 번호와 일치하는 댓글 모두 불러오기
	 * 
	 * @param conn
	 * @param infoId
	 * @return
	 */
	public List<Review> selectByBoardno(Connection conn, int boardno);

	/**
	 * 댓글삭제
	 * 
	 * @param conn
	 * @param reid
	 * @return 
	 */
	public int deleteByReid(Connection conn, int reid);

	
	   /**
	    * 좋아요 올리기
	    * 
	    * @param conn
	    * @param reid
	    * @return
	    */
	   public int updateGood(Connection conn, int reid);
}

