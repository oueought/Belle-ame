package dto;

public class Member {
	
	private String memid;
	private String mempw;
	private String memnick;
	private String memname;
	private String membirth;
	private String mememail;
	private String memphone;
	public String getMemid() {
		return memid;
	}
	public String setMemid(String memid) {
		return this.memid = memid;
	}
	public String getMempw() {
		return mempw;
	}
	public void setMempw(String mempw) {
		this.mempw = mempw;
	}
	public String getMemnick() {
		return memnick;
	}
	public void setMemnick(String memnick) {
		this.memnick = memnick;
	}
	public String getMemname() {
		return memname;
	}
	public void setMemname(String memname) {
		this.memname = memname;
	}
	public String getMembirth() {
		return membirth;
	}
	public void setMembirth(String membirth) {
		this.membirth = membirth;
	}
	public String getMememail() {
		return mememail;
	}
	public void setMememail(String mememail) {
		this.mememail = mememail;
	}
	public String getMemphone() {
		return memphone;
	}
	public void setMemphone(String memphone) {
		this.memphone = memphone;
	}
	@Override
	public String toString() {
		return "Member [memid=" + memid + ", mempw=" + mempw + ", memnick=" + memnick + ", memname=" + memname
				+ ", membirth=" + membirth + ", mememail=" + mememail + ", memphone=" + memphone + "]";
	}
	public Member(String memid, String mempw, String memnick, String memname, String membirth, String mememail,
			String memphone) {
		super();
		this.memid = memid;
		this.mempw = mempw;
		this.memnick = memnick;
		this.memname = memname;
		this.membirth = membirth;
		this.mememail = mememail;
		this.memphone = memphone;
	}
	
	public Member() {}
}

