package dto;

public class UploadFile {
	
	private int uploadno;
	private int boardno;
	private String uploadname;
	
	public UploadFile() {}

	public UploadFile(int uploadno, int boardno, String uploadname) {
		this.uploadno = uploadno;
		this.boardno = boardno;
		this.uploadname = uploadname;
	}

	@Override
	public String toString() {
		return "UploadFile [uploadno=" + uploadno + ", boardno=" + boardno + ", uploadname=" + uploadname + "]";
	}

	public int getUploadno() {
		return uploadno;
	}

	public void setUploadno(int uploadno) {
		this.uploadno = uploadno;
	}

	public int getBoardno() {
		return boardno;
	}

	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}

	public String getUploadname() {
		return uploadname;
	}

	public void setUploadname(String uploadname) {
		this.uploadname = uploadname;
	}
	
	

}
