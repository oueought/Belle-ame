package dto;

public class UploadFile {
	
	private int uploadno;
	private String boardno;
	private String uploadname;
	private String storedname;
	
	public UploadFile() {}
	
	
	public UploadFile(int uploadno, String boardno, String uploadname, String storedname) {
		super();
		this.uploadno = uploadno;
		this.boardno = boardno;
		this.uploadname = uploadname;
		this.storedname = storedname;
	}


	@Override
	public String toString() {
		return "UploadFile [uploadno=" + uploadno + ", boardno=" + boardno + ", uploadname=" + uploadname
				+ ", storedname=" + storedname + "]";
	}


	public int getUploadno() {
		return uploadno;
	}


	public void setUploadno(int uploadno) {
		this.uploadno = uploadno;
	}


	public String getBoardno() {
		return boardno;
	}


	public void setBoardno(String boardno) {
		this.boardno = boardno;
	}


	public String getUploadname() {
		return uploadname;
	}


	public void setUploadname(String uploadname) {
		this.uploadname = uploadname;
	}


	public String getStoredname() {
		return storedname;
	}


	public void setStoredname(String storedname) {
		this.storedname = storedname;
	}
	
	
	
	
	
}

