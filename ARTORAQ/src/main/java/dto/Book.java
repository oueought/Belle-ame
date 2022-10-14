package dto;

import java.util.Date;

public class Book {
	
	private int bookno;
	private String boardno;
	private String memid;
	private int price;
	private Date bookdate;
	private int amount;
	private int bookprice;
	
	public Book() {}

	public Book(int bookno, String boardno, String memid, int price, Date bookdate, int amount, int bookprice) {
		super();
		this.bookno = bookno;
		this.boardno = boardno;
		this.memid = memid;
		this.price = price;
		this.bookdate = bookdate;
		this.amount = amount;
		this.bookprice = bookprice;
	}

	@Override
	public String toString() {
		return "Book [bookno=" + bookno + ", boardno=" + boardno + ", memid=" + memid + ", price=" + price
				+ ", bookdate=" + bookdate + ", amount=" + amount + ", bookprice=" + bookprice + "]";
	}

	public int getBookno() {
		return bookno;
	}

	public void setBookno(int bookno) {
		this.bookno = bookno;
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

	public int getBookprice() {
		return bookprice;
	}

	public void setBookprice(int bookprice) {
		this.bookprice = bookprice;
	}
	

}
