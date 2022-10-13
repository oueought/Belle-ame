package dto;


public class Board {
	
	private int  boardno;	
	private String title;
	private String content;
	private String period;
	private String adminId;
	private int price;
	
	
	public Board() {}


	public Board(int boardno, String title, String content, String period, String adminId, int price) {
		this.boardno = boardno;
		this.title = title;
		this.content = content;
		this.period = period;
		this.adminId = adminId;
		this.price = price;
	}


	@Override
	public String toString() {
		return "Board [boardno=" + boardno + ", title=" + title + ", content=" + content + ", period=" + period
				+ ", adminId=" + adminId + ", price=" + price + "]";
	}


	public int getBoardno() {
		return boardno;
	}


	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getPeriod() {
		return period;
	}


	public void setPeriod(String period) {
		this.period = period;
	}


	public String getAdminId() {
		return adminId;
	}


	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
	
}	