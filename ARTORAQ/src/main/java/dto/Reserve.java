package dto;

/*   
BOOK_ID     NOT NULL	NUMBER   
INFO_ID    	NOT NULL	VARCHAR(20)
CUSTOMER_ID NULL 		VARCHAR(20)
BOOK_NUMBER NULL    	NUMBER 
BOOK_PRICE  NULL 		NUMBER 
BOOK_DATE 	NULL  		DATE
BOOK_ACOUNT NULL        NUMBER
*/

public class Reserve {
	private int bookid;
	private String bookinfo;
	private String customerid;
	private int booknumber;
	private int	bookprice;
	private int bookdate;
	private int bookacount;
	
	public Reserve() {}

	public Reserve(int bookid, String bookinfo, String customerid,
			int booknumber, int	bookprice, int bookdate, int bookacount)  {
		
		super();
		this.bookid = bookid;
		this.bookinfo = bookinfo;
		this.customerid = customerid;
		this.booknumber = booknumber;
		this.bookprice = bookprice;
		this.bookdate = bookdate;
		this.bookacount = bookacount;
		
	}

	public int getBookid() {
		return bookid;
	}

	public void setBookid(int bookid) {
		this.bookid = bookid;
	}

	public String getBookinfo() {
		return bookinfo;
	}

	public void setBookinfo(String bookinfo) {
		this.bookinfo = bookinfo;
	}

	public String getCustomerid() {
		return customerid;
	}

	public void setCustomerid(String customerid) {
		this.customerid = customerid;
	}

	public int getBooknumber() {
		return booknumber;
	}

	public void setBooknumber(int booknumber) {
		this.booknumber = booknumber;
	}

	public int getBookprice() {
		return bookprice;
	}

	public void setBookprice(int bookprice) {
		this.bookprice = bookprice;
	}

	public int getBookdate() {
		return bookdate;
	}

	public void setBookdate(int bookdate) {
		this.bookdate = bookdate;
	}

	public int getBookacount() {
		return bookacount;
	}

	public void setBookacount(int bookacount) {
		this.bookacount = bookacount;
	}

}
