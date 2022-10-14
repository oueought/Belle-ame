package dto;

public class Wish {
	
	private int wishno;
	private String memid;
	private String boardno;
	
	public Wish() {	}

	@Override
	public String toString() {
		return "Wishlist [wishno=" + wishno + ", memid=" + memid + ", boardno=" + boardno + "]";
	}

	public int getWishno() {
		return wishno;
	}

	public void setWishno(int wishno) {
		this.wishno = wishno;
	}

	public String getMemid() {
		return memid;
	}

	public void setMemid(String memid) {
		this.memid = memid;
	}

	public String getBoardno() {
		return boardno;
	}

	public void setBoardno(String boardno) {
		this.boardno = boardno;
	}

	public Wish(int wishno, String memid, String boardno) {
		super();
		this.wishno = wishno;
		this.memid = memid;
		this.boardno = boardno;
	}
	
	

}
