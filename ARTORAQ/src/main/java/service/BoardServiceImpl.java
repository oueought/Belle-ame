package service;


import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import common.JDBCTemplate;
import dao.BoardDao;
import dao.BoardDaoImpl;
import dto.Board;
import dto.Member;
import dto.Review;

public class BoardServiceImpl implements BoardService {
	
	private BoardDao boardDao = new BoardDaoImpl();
	private BoardDao commentDao = new BoardDaoImpl();
	
	Connection conn = JDBCTemplate.getConnection();

	@Override
	public int getComment(HttpServletRequest req) {
		
		Review review = new Review();
		
		review.setRecontent(req.getParameter("recontent"));
		review.setRating( Integer.parseInt(req.getParameter("rating")));
		
		
		// comment 값 확인
		System.out.println(review);
		
		int res = commentDao.insert(JDBCTemplate.getConnection(),review);
		return res;
		
	}

	@Override
	public void write(HttpServletRequest req) {
		
		// --- 첨부파일 없이 게시글 작성 처리 ---
		
		Board board = new Board();
		System.out.println(req.getParameter("title"));
		// 제목 처리
		board.setTitle( req.getParameter("title"));
		
		System.out.println(board);
		
		// 본문 처리
		board.setContent( req.getParameter("content"));
		
//		// 가격 처리
//		board.setPrice( Integer.parseInt(req.getParameter("price")));
//		
		// 관리자 ID처리
//		board.setAdminId((String) req.getSession().getAttribute("adminId")) ;
		
		Connection conn = JDBCTemplate.getConnection();
		
		if(boardDao.insert(conn, board) > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		} 
			
			
				
//		// 게시글 번호 생성
//		int infoId = boardDao.selectNextInfoId(conn);
//		
//		// 게시글 번호 삽입
//		board.setInfoId(infoId);
//		
//		// 관리자 ID처리
//		board.setAdminId((String) req.getSession().getAttribute("adminId")) ;
//		
//		
//		if(boardDao.insert(conn, board) > 0) {
//			JDBCTemplate.commit(conn);
//		} else {
//			JDBCTemplate.rollback(conn);
//		} 
			

		
	}
  
	@Override
	public List<Board> search(String result) {
		
		return boardDao.searchByKeyword(conn, result);
	}

	@Override
	public int cart( HttpServletRequest req ,String title) {
		Board board = new Board();  //보드객체 생성
		
		System.out.println("boardno = " + boardDao.selectBoadrnoByTitle( conn, title));
		board.setBoardno( boardDao.selectBoadrnoByTitle( conn, title) ); //게시물 번호 가져오기

		HttpSession session = req.getSession();  //세션 객체 생성
		
		Member mem = new Member();
		System.out.println("memid = " + (String) session.getAttribute("memid")); 
		mem.setMemid( (String) session.getAttribute("memid") );//회원 아이디 저장

		int res = boardDao.check(conn, board , mem); // 위시리스트에서 회원번호와 회원아이디 일치하는 결과물 유무 확인
		
		if( res != 1) { //카트에 없으면 넣고, 있으면 삭제
			return boardDao.cartAdd( conn, mem, board );    // 위시리스트에 입력  
		} else {
			return boardDao.cartOut( conn, mem, board ); 	// 위시리스트에 삭제
		}
		
		
		
	}
		
}
