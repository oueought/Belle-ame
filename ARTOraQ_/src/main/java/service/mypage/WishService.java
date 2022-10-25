package service.mypage;

import java.util.List;
import java.util.Map;

import dto.mypage.Wish;

public interface WishService {
	
	/**
	 * 로그인한 사람의 리스트 전체 조회
	 * 
	 * @return List<Wish> - 전체 조회 결과 목록
	 */
	
	public List<Wish> getMyWishList(String memid);

	/**
	 * 로그인한 사람의 리스트 전체 조회
	 * 
	 * @return List<Wish> - 전체 조회 결과 목록
	 */
	public List<Map<String, Object>> getMyWishListWithBoard(String memid);
	
}

