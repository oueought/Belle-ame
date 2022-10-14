package membership.dao.face;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import dto.Wish;

public interface WishDao {
	
	/**
	 * 
	 * @param conn - DB연결 객체
	 * @return	List<Wish> - 조회 결과 목록
	 */
	public List<Wish> selectByMemberId(Connection conn, String memid);

	/**
	 * 
	 * @param conn - DB연결 객체
	 * @return	List<Wish> - 조회 결과 목록
	 */
	public List<Map<String, Object>> selectByMemberIdWithBoard(Connection conn, String memid);
	
}
