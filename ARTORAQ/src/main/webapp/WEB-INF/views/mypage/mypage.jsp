<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../../layout/header.jsp" %>

<!-- css -->
<style>
	* {
		padding: 0;
		margin: ;
	}
	
	#content {
		margin-top: 90px;
		margin-bottom: 60px;
	}
	
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
	
	.mypage{
		display: flex;
/* 		border: 1px solid #ccc; */
		max-width: 600px;
		width: 100%;
	}
		.line {
		size: 40px;
		height: 1px;
		width: 50%;
		background: gray;
	}

</style>


<div class="content">
	<h3 style="text-align: center;">마이 페이지</h3>
			<hr class="line">
	
	<div class="mypage">
	
		<div class="profile">
			<img src="../image/Profile-PNG-File.png" class="profileimg">프로필 이미지
			<p><%=session.getAttribute("usernick") %>님</p>
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