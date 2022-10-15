package service;

import java.util.List;

import dto.Review;

public interface ReviewService {

	/**
	 * 댓글 작성 후 입력
	 * 
	 * @param review
	 * @return
	 */
	public int write(Review review);

	/**
	 * 
	 * 
	 * @param infoId
	 * @return
	 */
	public List<Review> seletAll(int boardno);

}
