package service.face;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.Review;

public interface ReviewReviewService {

	/**
	 * 댓글 작성 후 입력
	 * @param req 
	 * 
	 * @param review
	 * @return
	 */
	public int write(HttpServletRequest req, Review review);

	/**
	 * 
	 * 
	 * @param infoId
	 * @return
	 */
	public List<Review> seletAll(int boardno);

	/**
	 * 
	 * 
	 * @param reid
	 * @return 
	 */
	public int delete(int reid);

	
	/**
	 * 댓글 좋아요
	 * 
	 * @param reid
	 * @return
	 */
	public int good(int reid);

}

