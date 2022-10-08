package dto;

public class Customer {
	
	private String customer_id;
	private String customer_pw;
	private String customer_nickname;
	private String customer_name;
	private String customer_birth;
	private String customer_email;
	private String customer_phone;
	
	public Customer () {}

	public Customer(String customer_id, String customer_pw, String customer_nickname, String customer_name,
			String customer_birth, String customer_email, String customer_phone) {
		super();
		this.customer_id = customer_id;
		this.customer_pw = customer_pw;
		this.customer_nickname = customer_nickname;
		this.customer_name = customer_name;
		this.customer_birth = customer_birth;
		this.customer_email = customer_email;
		this.customer_phone = customer_phone;
	}

	@Override
	public String toString() {
		return "Customer [customer_id=" + customer_id + ", customer_pw=" + customer_pw + ", customer_nickname="
				+ customer_nickname + ", customer_name=" + customer_name + ", customer_birth=" + customer_birth
				+ ", customer_email=" + customer_email + ", customer_phone=" + customer_phone + "]";
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

	public String getCustomer_nickname() {
		return customer_nickname;
	}

	public void setCustomer_nickname(String customer_nickname) {
		this.customer_nickname = customer_nickname;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getCustomer_birth() {
		return customer_birth;
	}

	public void setCustomer_birth(String customer_birth) {
		this.customer_birth = customer_birth;
	}

	public String getCustomer_email() {
		return customer_email;
	}

	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}

	public String getCustomer_phone() {
		return customer_phone;
	}

	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}

}
