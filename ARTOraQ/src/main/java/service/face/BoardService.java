package service.face;



import javax.servlet.http.HttpServletRequest;

public interface BoardService {
	
	
	
	/**
	 * 전달된 데이터를 이용하여 댓글 처리
	 * 
	 * @param req 
	 * @return 
	 */
	public int getComment(HttpServletRequest req);
	
	


	}
	
	
		

