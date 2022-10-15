package dto;

public class Review {
	

	public Review() {}

	private int reid;
	private int boardno;
	private String memid;
	private String recontent;
	private int rating;
	private int good;
	public int getReid() {
		return reid;
	}
	public void setReid(int reid) {
		this.reid = reid;
	}
	public int getBoardno() {
		return boardno;
	}
	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	public String getRecontent() {
		return recontent;
	}
	public void setRecontent(String recontent) {
		this.recontent = recontent;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
	@Override
	public String toString() {
		return "Review [reid=" + reid + ", boardno=" + boardno + ", memid=" + memid + ", recontent=" + recontent
				+ ", rating=" + rating + ", good=" + good + "]";
	}
	public Review(int reid, int boardno, String memid, String recontent, int rating, int good) {
		super();
		this.reid = reid;
		this.boardno = boardno;
		this.memid = memid;
		this.recontent = recontent;
		this.rating = rating;
		this.good = good;
	}
	
	

}	