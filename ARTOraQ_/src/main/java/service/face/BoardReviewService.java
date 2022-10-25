package service.face;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.Board;


public interface BoardReviewService {
	
	
	
	/**
	 * 전달된 데이터를 이용하여 댓글 처리
	 * 
	 * @param req 
	 * @return 
	 */
	public int getComment(HttpServletRequest req);

	
	
	/**
	 * 게시글 작성
	 * 입력한 게시글을 DB에 저장
	 * @param req - 요청 정보 객체
	 */
	public void write(HttpServletRequest req);


	/**
	 * board 게시글 검색
	 * 
	 * @param result
	 * @return 검색결과 리스트 반환
	 */
	public List<Board> search(String result);


	/**
	 * 장바구니에 해당 전시회 담기
	 * @param req 
	 * 
	 * @param title
	 * @return
	 */
	public int cart(HttpServletRequest req, String title);



	


	}
	
	
		


