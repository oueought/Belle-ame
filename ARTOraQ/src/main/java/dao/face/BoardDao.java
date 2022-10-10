package dao.face;

import java.sql.Connection;
import java.util.List;

import dto.Comment;

public interface BoardDao {

	/**
	 * 
	 * @param connection - DB연결 객체
	 * @param comment    - 삽입될 댓글 내용
	 * @return int - INSERT 쿼리 수행 결과
	 */
	public int insert(Connection connection, Comment comment);



	public List<Comment> commentAllByInfoId(Connection connection);
	
}
