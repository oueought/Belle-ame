package dto;

import java.util.Date;

public class Comment {
	
	private int cmId;
	private int infoId;
	private String customerId;
	private String cmContents;
	private Date cmDate;
	private int reviewRating;
	private int good;
	
	public Comment() {}

	public Comment(int cmId, int infoId, String customerId, String cmContents, Date cmDate, int reviewRating,
			int good) {
		this.cmId = cmId;
		this.infoId = infoId;
		this.customerId = customerId;
		this.cmContents = cmContents;
		this.cmDate = cmDate;
		this.reviewRating = reviewRating;
		this.good = good;
	}

	@Override
	public String toString() {
		return "Comment [cmId=" + cmId + ", infoId=" + infoId + ", customerId=" + customerId + ", cmContents="
				+ cmContents + ", cmDate=" + cmDate + ", reviewRating=" + reviewRating + ", good=" + good
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
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
	
	
	

}	