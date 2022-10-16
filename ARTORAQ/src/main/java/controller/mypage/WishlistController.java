package controller.mypage;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.mypage.Wish;
import service.mypage.WishService;
import service.mypage.WishServiceImpl;

@WebServlet("/mypage/wishlist")
public class WishlistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    //서비스 객체
	private WishService wishService = new WishServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//로그인 세션 값 가져오기
		HttpSession session = req.getSession();
		String memid = (String)session.getAttribute("memid");
		
		System.out.println("/wishlist memid : " + memid);
		
		//로그인한 사람의 내역 조회
//		List<Wish> wishList = wishService.getMyWishList(memid);
		List<Map<String, Object>> wishList = wishService.getMyWishListWithBoard(memid);
		
		System.out.println("--- TEST ---");
//		for(Wish w : wishList)	System.out.println(w);
		for(Map m : wishList)	System.out.println(m);
		
		//조회결과 MODEL값 전달
		req.setAttribute("wishList", wishList);
		
		//페이지 이동
		req.getRequestDispatcher("/WEB-INF/views/mypage/wish.jsp").forward(req, resp);
	
		
	}

}
