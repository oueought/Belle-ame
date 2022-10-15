package dao;

import java.sql.Connection;
import java.util.List;

import dto.Review;

public interface ReviewDao {

	/**
	 * 댓글작성
	 * 
	 * @param conn
	 * @param review
	 * @return
	 */
	public int write(Connection conn, Review review);

	/**
	 * 게시글 번호와 일치하는 댓글 모두 불러오기
	 * 
	 * @param conn
	 * @param infoId
	 * @return
	 */
	public List<Review> selectByBoardno(Connection conn, int boardno);

}
