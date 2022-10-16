package dao.reserve;

import java.sql.Connection;

import dto.reserve.Board;
import dto.reserve.Reserve;

public interface ReserveDao {


	Board boardInfoByBoardNo(String boardNo, Connection conn);

	void reserve(Reserve reserve, Connection conn);
	
}
