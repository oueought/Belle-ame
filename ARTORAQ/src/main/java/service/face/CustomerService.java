package service.face;

import javax.servlet.http.HttpServletRequest;

import dto.Customer;

public interface CustomerService {
	
	//--- 로그인 ---
	/**
	 * 로그인 정보 추출하기
	 * 
	 * @param req - 요청 정보 객체
	 * @return Customer - 로그인 정보(id, pw)
	 */
	public Customer getLoginCustomer(HttpServletRequest req);
	
	/**
	 * 로그인 인증 처리
	 * 
	 * @param customer - 로그인 정보(id, pw)
	 * @return boolean - true:인증성공, false: 인증실패
	 */
	public boolean login(Customer customer);
	
	// --- 아이디 찾기 ---
	
	/**
	 * 아이디찾기 정보 추출하기
	 * 
	 * @param req - 요청 정보 객체
	 * @return Customer - 아이디찾기 정보
	 */
	public Customer getFindIdCustomer(HttpServletRequest req);
	
	/**
	 * 인증 처리
	 * 
	 * @param customer - 정보(name, phone)
	 * @return boolean - true: 성공, false: 실패
	 */
	public boolean findId(Customer customer);
	
	/**
	 * 유저 정보 가져오기
	 * 
	 * @param customer - 조회할 회원 이름을 가진 객체
	 * @return Customer - 조회된 회원 정보(name, phone, id)
	 */
	public Customer info(Customer customer);

	

}
