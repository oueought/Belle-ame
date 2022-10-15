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
	 * 전달파라미터를 Board DTO로 저장하여 반환
	 * 
	 * @param req - 요청 정보 객체
	 * @return Board - 전달파라미터 boardno를 저장한 객체
	 */
	public Board getBoardno(HttpServletRequest req);
	
	
	
	/**
	 * 전달된 boardno를 이용하여 게시글을 조회한다
	 * 
	 * @param boardno - 조회할 boardno를 가진 DTO객체
	 * @return Board - 조회된 게시글 정보
	 */
	public Board view(Board boardno);
	
	
	
	
	
	/**
	 * 게시글 작성
	 * 입력한 게시글을 DB에 저장
	 * @param req - 요청 정보 객체
	 */
	public void write(HttpServletRequest req);


	/**
	 * 전달파라미터를 Board DTO로 저장하여 반환
	 * 
	 * @param req - 요청 정보 객체
	 * @return Board - 전달파라미터 boardno를 저장한 객체
	 */



	
	/**
	 * 게시글 삭제
	 * 
	 * @param board - 삭제할 게시글 번호 객체
	 */
	public void delete(Board board);








	



}
		

