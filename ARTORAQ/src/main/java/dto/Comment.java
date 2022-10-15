package dto;

import java.util.Date;

public class Comment {
	private int cmId;                  //댓글 번호 sequence
	private int infoId;				//댓글이 작성된 게시글의 number
	private String customerId;			//댓글 작성한 customer_id
	private String cmContents;			//작성된 댓글 내용
	private Date cmDate;				//댓글 작성일자 sysdate
	private int reviewRating;			//댓글 작성시 매긴 별점
	private int good;					//작성된 댓글의 좋아요 누른 수 게시판의 조회수 같은 개념
	
	@Override
	public String toString() {
		return "ReviewComment [cmId=" + cmId + ", infoId=" + infoId + ", customerId=" + customerId + ", cmContents="
				+ cmContents + ", cmDate=" + cmDate + ", reviewRating=" + reviewRating + ", good=" + good + "]";
	}

	public int getCmId() {
		return cmId;
	}

	public void setCmId(int cmId) {
		this.cmId = cmId;
	}

	public int getInfoId() {
		return infoId;
	}

	public void setInfoId(int infoId) {
		this.infoId = infoId;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getCmContents() {
		return cmContents;
	}

	public void setCmContents(String cmContents) {
		this.cmContents = cmContents;
	}

	public Date getCmDate() {
		return cmDate;
	}

	public void setCmDate(Date cmDate) {
		this.cmDate = cmDate;
	}

	public int getReviewRating() {
		return reviewRating;
	}

	public void setReviewRating(int reviewRating) {
		this.reviewRating = reviewRating;
	}

	public int getGood() {
		return good;
	}

	public void setGood(int good) {
		this.good = good;
	}

	public Comment(int cmId, int infoId, String customerId, String cmContents, Date cmDate, int reviewRating,
			int good) {
		super();
		this.cmId = cmId;
		this.infoId = infoId;
		this.customerId = customerId;
		this.cmContents = cmContents;
		this.cmDate = cmDate;
		this.reviewRating = reviewRating;
		this.good = good;
	}
	
	public Comment() {}


	
}
