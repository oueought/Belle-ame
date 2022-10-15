package dao;

import java.sql.Connection;
import java.util.List;

import dto.Board;
import dto.Member;
import dto.Review;

public interface BoardDao {

	/**
	 * 
	 * @param connection - DB연결 객체
	 * @param review    - 삽입될 댓글 내용
	 * @return int - INSERT 쿼리 수행 결과
	 */
	public int insert(Connection connection, Review review);



	public List<Review> commentAllByInfoId(Connection connection);


	/**
	 * 게시글 입력
	 * 
	 * @param conn - DB연결 객체
	 * @param board - 삽입될 게시글 내용
	 * @return int - INSERT 쿼리 수행 결과
	 */
	public int insert(Connection conn, Board board);


	/**
	 * board게시판 키워드에 맞는 게시글 검색
	 * 
	 * @param conn - DB 연결객체
	 * @param result
	 * @return
	 */
	public List<Board> searchByKeyword(Connection conn, String result);


	/**
	 * cart에 담을 boardno 가져오기
	 * 
	 * @param title
	 * @return
	 */
	public int selectBoadrnoByTitle( Connection conn , String title);


	/**
	 * 위시리스트에 동일한 제목있는지 여부 확인
	 * 
	 * @param conn
	 * @param board - 게시물번호
	 * @param mem  - 회원아이디
	 * @return
	 */
	public int check(Connection conn, Board board, Member mem);

	/**
	 * 위시리스트에 담기 
	 * 
	 * @param conn 
	 * @param mem 회원아이디
	 * @param board 게시물번호
	 * @return
	 */
	public int cartAdd(Connection conn, Member mem, Board board);




	/**
	 * 위시리스트에 삭제
	 * 
	 * @param conn
	 * @param mem
	 * @param board
	 * @return
	 */
	public int cartOut(Connection conn, Member mem, Board board);





	
}
