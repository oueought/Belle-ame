package dao;

import java.sql.Connection;
import java.util.List;

import dto.Comment;

public interface ReviewCommentDao {

	/**
	 * 리뷰 DB저장하기 반환값 없음
	 * 
	 * @param conn - DB연결 객체
	 * @param comment 저장할 리뷰 객체
	 * @return 
	 */
	public int insert(Connection conn, Comment comment);

	/**
	 * DB에서 리뷰 데이터 모두 받아오기 <---게시글 번호 알게 될 경우 수정 필요/ 게시글 번호로 알아와야함
	 * 
	 * @param conn
	 * @return
	 */
	public List<Comment> commentAllByInfoId(Connection conn);

	

}
