<%@page import="membership.dao.impl.CustomerDaoImpl"%>
<%
//1. 한글처리 
request.setCharacterEncoding("UTF-8");

%>
<!-- <!-- 2. 전달되는 데이터 입력(저장) => 자바빈 객채, 액션태그사용--> -->
<%-- <jsp:useBean id="cs" class="membership.CustomerBean" /> --%>
<%-- <jsp:setProperty property="*" name="mb"/> --%>
<%

//4. MemberDAO객체생성 -> 전달받은 정보 모두 저장
CustomerDaoImpl customer = new CustomerDaoImpl();

//5. 회원 가입 메서드 (insertCustomer())
customer.insert(conn, customer);
%>

//6. 회원가입 완료시 로그인페이지로 이동
<script type="text/javascript">
alert("회원가입성공")
location.href="/login";
</script>