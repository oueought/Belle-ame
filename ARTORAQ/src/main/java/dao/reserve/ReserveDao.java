package dao.reserve;

import java.sql.Connection;

import dto.reserve.Board;

public interface ReserveDao {

	Board getBoardByBoardNo(String boardNo, Connection conn);
	
}
