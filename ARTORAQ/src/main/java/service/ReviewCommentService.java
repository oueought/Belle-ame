package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.Comment;

public interface ReviewCommentService {

	/**
	 * 전달 파라미터를 DTO 객체에 저장후 반환
	 * 
	 * @param req - 댓글 내용 담은 객체
	 * @return
	 */
	public int getReviewCommnet(HttpServletRequest req);

	/**
	 * 모든 리뷰 불러오기
	 * 
	 * @return 모든 리뷰 담은 MODEL
	 */
	public List<Comment> commentAllByInfoId();

}
