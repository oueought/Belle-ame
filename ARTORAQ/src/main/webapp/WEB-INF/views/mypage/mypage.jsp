<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../../layout/header.jsp" %>

<!-- css -->
<style>

.mypage { 
	width: 1000px;   
	margin: 0 auto;
	padding: 80px 0;
}

.mypage h3 {
	text-align: center;
	font-size: 30px;
	margin: 0 0 15px;
}

/* 프로필 이미지 */	
.profileimg {
	width: 150px;
	height: 150px;
}

/* 마이페이지 메뉴 */
table {
	border: 1px solid #ccc;
}
	
td {
	border: 1px solid #ccc;
	width: 190px;
	height: 130px;
	text-decoration: none;
	text-align: center;
}
	
.mypage-form{
	display: flex;
/* 		border: 1px solid #ccc; */
	max-width: 600px;
	width: 100%;
	}

</style>

<div class="mypage">
	<h3 style="text-align: center;">마이 페이지</h3><br><br>
	
	<div class="mypage-form">
		<div class="profile">
			<br><img src="/image/Profile-PNG-File.png" class="profileimg"><br><br>
			<p style="text-align: center;"><%=session.getAttribute("usernick") %>님</p>
		</div>
		
		<div class="menu">
			<table>
				<tr>
					<td><a href="/mypage/profile">프로필 관리</a></td>
					<td><a href="#">회원 정보 수정</a></td>
				</tr>
		
				<tr>
					<td><a href="#">위시리스트</a></td>
					<td><a href="#">결제 내역</a></td>
				</tr>
			</table>
		</div>
	</div>
</div>

<%@ include file="../../layout/footer.jsp" %>