package dto.reserve;

import java.util.Date;

public class Reserve {
	
	private int boookno;
	private String boardno;
	private String memid;
	private int bookprice;
	private int price;
	private Date bookdate;
	private int amount;
	private String bookdateSt;
	
	public Reserve() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Reserve(int boookno, String boardno, String memid, int bookprice, int price, Date bookdate, int amount,
			String bookdateSt) {
		super();
		this.boookno = boookno;
		this.boardno = boardno;
		this.memid = memid;
		this.bookprice = bookprice;
		this.price = price;
		this.bookdate = bookdate;
		this.amount = amount;
		this.bookdateSt = bookdateSt;
	}
	public int getBoookno() {
		return boookno;
	}
	public void setBoookno(int boookno) {
		this.boookno = boookno;
	}
	public String getBoardno() {
		return boardno;
	}
	public void setBoardno(String boardno) {
		this.boardno = boardno;
	}
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	public int getBookprice() {
		return bookprice;
	}
	public void setBookprice(int bookprice) {
		this.bookprice = bookprice;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getBookdate() {
		return bookdate;
	}
	public void setBookdate(Date bookdate) {
		this.bookdate = bookdate;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getBookdateSt() {
		return bookdateSt;
	}
	public void setBookdateSt(String bookdateSt) {
		this.bookdateSt = bookdateSt;
	}
	@Override
	public String toString() {
		return "Reserve [boookno=" + boookno + ", boardno=" + boardno + ", memid=" + memid + ", bookprice=" + bookprice
				+ ", price=" + price + ", bookdate=" + bookdate + ", amount=" + amount + ", bookdateSt=" + bookdateSt
				+ "]";
	}
	
	



}
