package service.reserve;

import javax.servlet.http.HttpServletRequest;

import dto.reserve.Board;
import dto.reserve.Reserve;

public interface ReserveService {
	
	
	public Reserve getParam(HttpServletRequest req);

	public Board boardInfoByBoardNo(String boardNo);

	public void reserve(Reserve reserve);
	
}
