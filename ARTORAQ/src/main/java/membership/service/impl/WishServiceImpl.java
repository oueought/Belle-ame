package membership.service.impl;

import java.util.List;
import java.util.Map;

import common.JDBCTemplate;
import dto.Wish;
import membership.dao.face.WishDao;
import membership.dao.impl.WishDaoImpl;
import membership.service.face.WishService;

public class WishServiceImpl implements WishService {
	
	//Dao 객체
	private WishDao wishDao = new WishDaoImpl();
	
	@Override
	public List<Wish> getMyWishList(String memid) {
		
		//전체 조회 결과 처리
		return wishDao.selectByMemberId(JDBCTemplate.getConnection(), memid);
	}

	@Override
	public List<Map<String, Object>> getMyWishListWithBoard(String memid) {
		
		//전체 조회 결과 처리
		return wishDao.selectByMemberIdWithBoard(JDBCTemplate.getConnection(), memid);
	}
	
}
