package dao.face;

import java.sql.Connection;


import java.util.List;

import dto.Board;
import dto.UploadFile;

public interface BoardDao {

	
	
	/**
	 * 테이블 전체 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return List<Board> - 테이블 전체 조회 결과 목록
	 */
	public List<Board> selectAll(Connection conn);

	
	
	/**
	 * 지정된 boardno의 게시글 조회하기
	 * 
	 * @param conn - DB 연결 객체
	 * @param boardno - 조회할 게시글의 boardno를 가진 DTO객체
	 * @return Board - 조회된 게시글의 상세정보 DTO객체
	 */
	public Board selectBoardByBoard(Connection conn, Board boardno);
	
	
	
	/**
	 * 게시글 입력
	 * 
	 * @param conn  - DB연결 객체
	 * @param board - 삽입될 게시글 내용
	 * @return int - INSERT 쿼리 수행 결과
	 */
	public int insert(Connection conn, Board board);

	

	/**
	 * 시퀀스 이용해서 다음 게시글 번호 조회하기
	 * 
	 * @param conn - DB 연결 객체
	 * @return int - 다음 게시글 번호
	 */
	public String selectNextBoardno(Connection conn);




	/**
	 * 첨부파일 삽입
	 * 
	 * @param conn  - DB연결 객체
	 * @param uploadFile - 첨부파일 정보
	 * @return int - INSERT 수행 결과
	 */
	public int insertFile(Connection conn, UploadFile uploadFile);



	/**
	 * 첨부파일 정보 조회
	 * 
	 * @param conn
	 * @param viewBoard	- 조회할 게시글 번호
	 * @return UploadFile - 첨부파일 정보
	 */
	public UploadFile selectFile(Connection conn, Board viewBoard);



	
	public List<UploadFile> getFile(Connection conn);

	
	
	/**
	 * 
	 * 게시글 수정
	 * 
	 * @param conn
	 * @param board
	 * @return	UPDATE 수행 결과
	 */
	public int update(Connection conn, Board board);
	
	
	
	
	/**
	 * 게시글 첨부된 파일 삭제
	 * 
	 * @param conn 
	 * @param board - 삭제 할 게시글 번호
	 * @return - Delete 수행결과
	 */
	public int deleteFile(Connection conn, Board board);




	/**
	 * 게시글 삭제
	 * 
	 * @param conn 
	 * @param board - 삭제 할 게시글 번호
	 * @return - Delete 수행결과
	 */
	public int delete(Connection conn, Board board);


	







	

	
	
	
	
	
	

}

