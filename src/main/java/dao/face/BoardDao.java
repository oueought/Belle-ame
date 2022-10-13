package dao.face;

import java.sql.Connection;

import java.util.List;

import dto.Board;

public interface BoardDao {

	
	
	/**
	 * 테이블 전체 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return List<Board> - 테이블 전체 조회 결과 목록
	 */
	public List<Board> selectAll(Connection conn);

	
	
	
	
	/**
	 * 게시글 입력
	 * 
	 * @param conn  - DB연결 객체
	 * @param board - 삽입될 게시글 내용
	 * @return int - INSERT 쿼리 수행 결과
	 */
	public int insert(Connection conn, Board board);

	
	
	
	
	
//	-------------------------------- 댓글 추후에 추가 -------------------------------------------------
//	
//	/**
//	 * 
//	 * @param connection - DB연결 객체
//	 * @param comment    - 삽입될 댓글 내용
//	 * @return int - INSERT 쿼리 수행 결과
//	 */
//		  public int insert(Connection connection, Comment comment);
//		  
//		 
//		 
//		  public List<Comment> commentAllByInfoId(Connection connection);
//		 

//	/**
//	 * 시퀀스를 이용하여 다음 게시글 번호 조회하기
//	 * @param conn - DB 연결 객체
//	 * @return int - 다음 게시글 번호
//	 */
//	public int selectNextInfoId(Connection conn);

}
