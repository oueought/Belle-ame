package service.face;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.Board;


public interface BoardService {
	
	
	
	/**
	 * 게시글 전체 조회
	 * 
	 * @return List<Board> getList();
	 */
	public List<Board> getList();
	
	
	
	/**
	 * 게시글 작성
	 * 입력한 게시글을 DB에 저장
	 * @param req - 요청 정보 객체
	 */
	public void write(HttpServletRequest req);

	
	
	
// -------------------------------- 댓글 추후에 추가 -------------------------------------------------	
	
//	/**
//	 * 전달된 데이터를 이용하여 댓글 처리
//	 * 
//	 * @param req 
//	 * @return 
//	 */
//	public int getComment(HttpServletRequest req);
//
//	
	
	


	


	}
	
	
		

