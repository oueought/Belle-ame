package dto.reserve;

import java.util.Date;

public class Reserve {
	
	private int book_id;
	private String info_id;
	private String customer_id;
	private int book_number;
	private int book_price;
	private Date book_date;
	private int book_acount;
	
	public Reserve() {	}

	public Reserve(int book_id, String info_id, String customer_id, int book_price, Date book_date,
			int book_acount) {
		super();
		this.book_id = book_id;
		this.info_id = info_id;
		this.customer_id = customer_id;
		this.book_price = book_price;
		this.book_date = book_date;
		this.book_acount = book_acount;
	}

	@Override
	public String toString() {
		return "artOraqDTO [book_id=" + book_id + ", info_id=" + info_id + ", customer_id=" + customer_id
				+ book_number + ", book_price=" + book_price + ", book_date=" + book_date
				+ ", book_acount=" + book_acount + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}

	public String getInfo_id() {
		return info_id;
	}

	public void setInfo_id(String info_id) {
		this.info_id = info_id;
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public int getBook_price() {
		return book_price;
	}

	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}

	public Date getBook_date() {
		return book_date;
	}

	public void setBook_date(Date book_date) {
		this.book_date = book_date;
	}

	public int getBook_acount() {
		return book_acount;
	}

	public void setBook_acount(int book_acount) {
		this.book_acount = book_acount;
	}

	

}
