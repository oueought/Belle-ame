package dto.mypage;

public class Wish {
	
	private String wishno;
	private String memid;
	private String boardno;
	
	public Wish() {	}

	@Override
	public String toString() {
		return "Wishlist [wishno=" + wishno + ", memid=" + memid + ", boardno=" + boardno + "]";
	}

	public String getWishno() {
		return wishno;
	}

	public void setWishno(String wishno) {
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

	public Wish(String wishno, String memid, String boardno) {
		super();
		this.wishno = wishno;
		this.memid = memid;
		this.boardno = boardno;
	}
	
	

}
