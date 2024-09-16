package service.reserve;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dao.reserve.ReserveDao;
import dao.reserve.ReserveDaoImpl;
import dto.reserve.Board;
import dto.reserve.Reserve;

public class ReserveServiceImpl implements ReserveService {

	private ReserveDao dao = new ReserveDaoImpl();
	
	@Override
	public Reserve getParam(HttpServletRequest req) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Board boardInfoByBoardNo(String boardNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		return dao.boardInfoByBoardNo(boardNo,conn);
	}

	@Override
	public void reserve(Reserve reserve) {
		Connection conn = JDBCTemplate.getConnection();
		
		dao.reserve(reserve, conn);
		
	}

	
}
