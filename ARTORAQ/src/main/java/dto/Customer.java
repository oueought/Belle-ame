package dto;

public class Customer {
	
	private String customer_id;
	private String customer_pw;
	private String customer_name;
	private String customer_nickname;
	private String customer_phone;
	private String customer_email;
	
	public Customer() {}

	@Override
	public String toString() {
		return "Join_customer [customer_id=" + customer_id + ", customer_pw=" + customer_pw + ", customer_name="
				+ customer_name + ", customer_nickname=" + customer_nickname + ", customer_phone=" + customer_phone
				+ ", customer_email=" + customer_email + "]";
	}

	public Customer(String customer_id, String customer_pw, String customer_name, String customer_nickname,
			String customer_phone, String customer_email) {
		super();
		this.customer_id = customer_id;
		this.customer_pw = customer_pw;
		this.customer_name = customer_name;
		this.customer_nickname = customer_nickname;
		this.customer_phone = customer_phone;
		this.customer_email = customer_email;
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public String getCustomer_pw() {
		return customer_pw;
	}

	public void setCustomer_pw(String customer_pw) {
		this.customer_pw = customer_pw;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getCustomer_nickname() {
		return customer_nickname;
	}

	public void setCustomer_nickname(String customer_nickname) {
		this.customer_nickname = customer_nickname;
	}

	public String getCustomer_phone() {
		return customer_phone;
	}

	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}

	public String getCustomer_email() {
		return customer_email;
	}

	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}
	
	

}
