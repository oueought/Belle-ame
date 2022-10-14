<%@page import="dto.Board"%>
<%@page import="java.util.Map"%>
<%@page import="dto.Wish"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="../layout/header.jsp"%>

<%
// 	List<Wish> wish = (List) request.getAttribute("wishList");
	List<Map<String, Object>> wish = (List) request.getAttribute("wishList");
%>

<script type="text/javascript">

$(document).ready(function() {
	$("#btnCancel").click(function() {	//취소버튼 클릭시
		$(location).attr('href', '/') //메인페이지 이동
	})
})

</script>

<style type="text/css">

.line {
	height: 1px;
	width: 30%;
	background: gray;
}

.mypage {
	text-align: center;
	font-size: 19pt;
	font-weight: bold;"
}

.title {
	font-size: 14pt;
	font-weight: bold;
	text-align: center;
}

body{ margin-top:20px;
}
h3 {
    font-size: 16px;
}
.text-navy {
    color: #1ab394;
}
.cart-product-imitation {
  text-align: center;
  padding-top: 30px;
  padding-right: 30px;
  height: 200px;
  width: 150px;
}

table.shoping-cart-table {
  margin-bottom: 0;
}
table.shoping-cart-table tr td {
  border: none;
  text-align: right;
}
table.shoping-cart-table tr td.desc,
table.shoping-cart-table tr td:first-child {
  text-align: left;
}
table.shoping-cart-table tr td:last-child {
  width: 80px;
}
.ibox {
  clear: both;
  margin-bottom: 25px;
  margin-top: 0;
  padding: 0;
}
.ibox.collapsed .ibox-content {
  display: none;
}

.ibox:after,
.ibox:before {
  display: table;
}
.ibox-title {
  -moz-border-bottom-colors: none;
  -moz-border-left-colors: none;
  -moz-border-right-colors: none;
  -moz-border-top-colors: none;
  background-color: #ffffff;
  border-color: #e7eaec;
  border-image: none;
  border-style: solid solid none;
  border-width: 3px 0 0;
  color: inherit;
  margin-bottom: 0;
  padding: 14px 15px 7px;
  min-height: 48px;
}
.ibox-content {
  background-color: #ffffff;
  color: inherit;
  padding: 15px 20px 20px 20px;
  border-color: #e7eaec;
  border-image: none;
  border-style: solid solid none;
  border-width: 1px 0;
}
.ibox-footer {
  color: inherit;
  border-top: 1px solid #e7eaec;
  font-size: 90%;
  background: #ffffff;
  padding: 10px 15px;
}

/* 버튼 스타일 */
.btn {
     background-color: #ffffff;
     font-size: 14px;
   transition: all 0.2s;
   padding: 3px 10px;
   border-radius: 0;
   margin: 3px;
}

#btnCheckout { 
   border: 2px solid #6aafe6;
   color: #6e6e6e;
}

#btnCheckout:hover {
     background: #6aafe6;
   outline: none;
   color: white;
}

#btnShopContinue {
   border: 2px solid #a3a1a1;
   color: #6e6e6e;
}

#btnCancel {
   border: 2px solid #a3a1a1;
   color: #6e6e6e;
}

#btnShopContinue:hover {
   background: #a3a1a1; 
   outline: none;
   color: white;
}

#btnCancel:hover {
   background: #a3a1a1; 
   outline: none;
   color: white;
}

</style>

<body>

<%=session.getAttribute("memid") %>
	<div class="mypage" >마이페이지</div>
	<hr class="line"><br><br>
	
	<div class="title">위시리스트</div><br><br>
	
<div class="container">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-md-9">
            <div class="ibox">
                <div class="ibox-title">
                    <span class="pull-right">(<strong>5</strong>) items</span>
                    <h5>Items in your cart</h5>
                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table shoping-cart-table">
                            <tbody>
                            
         					<% for(int i=0; i<wish.size(); i++) { %>
                            <tr>
                                <td width="90">
                                    <img src="https://ifh.cc/g/wcRJ0K.jpg" alt="..." class="cart-product-imitation">
                                </td>
                                <td class="desc">
                                    <h3>
                                    <a href="#" class="text-navy">
										<%= ((Board) wish.get(i).get("board")).getTitle() %>
                                    </a>
                                    </h3>
                                    <p class="small">
										<%= ((Board) wish.get(i).get("board")).getPeriod() %>
                                    </p>
                                    <dl class="small m-b-none">
                                        <dt>전시장</dt>
                                        <dd>동대문디자인플라자 디자인 전시관</dd>
                                    </dl>

                                    <div class="m-t-sm">
                                        <a href="#" class="text-muted"><i class="fa fa-trash"></i> Remove item</a>
                                    </div>
                                </td>
   								<td>
                                    ₩13,000
                                </td>
                                <td width="65">
                                    <input type="text" class="form-control" placeholder="1">
                                </td>
                                <td>
                                    <h4>
                                    ₩13,000
                                    </h4>
                                </td>
                            </tr>
                            <% } %>
<%--            <% for(int i=0; i<wish.size(); i++) { %> --%>
<!--                             <tr> -->
<!--                                 <td width="90"> -->
<!--                                     <img src="https://ifh.cc/g/wcRJ0K.jpg" alt="..." class="cart-product-imitation"> -->
<!--                                 </td> -->
<!--                                 <td class="desc"> -->
<!--                                     <h3> -->
<!--                                     <a href="#" class="text-navy"> -->
<!-- 										줄리앙 : 그러면, 거기(Then, There) -->
<%-- 									  <p>결제일: <%=wish.get(i).getBoardno() %></p> --%>
										
<!--                                     </a> -->
<!--                                     </h3> -->
<!--                                     <p class="small"> -->
<!--                                         2022년 10월 1일 - 2023년 1월 8일 -->
<!--                                     </p> -->
<!--                                     <dl class="small m-b-none"> -->
<!--                                         <dt>전시장</dt> -->
<!--                                         <dd>동대문디자인플라자 디자인 전시관</dd> -->
<!--                                     </dl> -->

<!--                                     <div class="m-t-sm"> -->
<!--                                         <a href="#" class="text-muted"><i class="fa fa-trash"></i> Remove item</a> -->
<!--                                     </div> -->
<!--                                 </td> -->
<!--    								<td> -->
<!--                                     ₩13,000 -->
<!--                                 </td> -->
<!--                                 <td width="65"> -->
<!--                                     <input type="text" class="form-control" placeholder="1"> -->
<!--                                 </td> -->
<!--                                 <td> -->
<!--                                     <h4> -->
<!--                                     ₩13,000 -->
<!--                                     </h4> -->
<!--                                 </td> -->
<!--                             </tr> -->
                            
<%--                             <% } %> --%>
                            </tbody>
                        </table>
                    </div>

                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table shoping-cart-table">

                            <tbody>
                            <tr>
                                <td width="90">
                               <img src="https://ifh.cc/g/QyVr5T.jpg" alt="..." class="cart-product-imitation">
                                </td>
                                <td class="desc">
                                    <h3>
                                        <a href="#" class="text-navy">
                                            살바도르 달리전
                                        </a>
                                    </h3>
                                    <p class="small">
                                        2021년 11월 27일 - 2023년 04월 03일
                                    </p>
                                    <dl class="small m-b-none">
                                        <dt>전시장</dt>
                                        <dd>동대문디자인플라자 디자인 전시관</dd>
                                    </dl>

                                    <div class="m-t-sm">
                                        <a href="#" class="text-muted"><i class="fa fa-trash"></i> Remove item</a>
                                    </div>
                                </td>
                                   <td>
                                    ₩20,000
                                </td>
                                <td width="65">
                                    <input type="text" class="form-control" placeholder="1">
                                </td>
                                <td>
                                    <h4>
                                    ₩20,000
                                    </h4>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table shoping-cart-table">

                            <tbody>
                            <tr>
                                <td width="90">
                                <img src="https://ifh.cc/g/QqjPsL.jpg" alt="..." class="cart-product-imitation">    
                                </td>
                                <td class="desc">
                                    <h3>
                                        <a href="#" class="text-navy">
                                            프랑코 폰타나:컬러in라이프
                                        </a>
                                    </h3>
                                    <p class="small">
                                        2022년 09월 30일 - 2023년 03월 01일
                                    </p>
                                    <dl class="small m-b-none">
                                        <dt>전시장</dt>
                                        <dd>마이아트뮤지엄</dd>
                                    </dl>

                                    <div class="m-t-sm">

                                        <a href="#" class="text-muted"><i class="fa fa-trash"></i> Remove item</a>
                                    </div>
                                </td>
                                <td>
                                    ₩5,000
                                    <s class="small text-muted">₩10,000</s>
                                </td>
                                <td width="65">
                                    <input type="text" class="form-control" placeholder="1">
                                </td>
                                <td>
                                    <h4>
                                        ₩5,000
                                    </h4>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table shoping-cart-table">

                            <tbody>
                            <tr>
                                <td width="90">
                                 <img src="https://ifh.cc/g/pzdotw.png" alt="..." class="cart-product-imitation">
                                </td>
                                <td class="desc">
                                    <h3>
                                        <a href="#" class="text-navy">
                                            뒤뷔페 展
                                        </a>
                                    </h3>
                                    <p class="small">
										2022년 10월 01일 - 2023년 01월 31일
                                    </p>
                                    <dl class="small m-b-none">
                                        <dt>전시장</dt>
                                        <dd>올림픽공원 소마미술관 2관</dd>
                                    </dl>

                                    <div class="m-t-sm">

                                        <a href="#" class="text-muted"><i class="fa fa-trash"></i> Remove item</a>
                                    </div>
                                </td>

                                <td>
                                    ₩20,000
                                </td>
                                <td width="65">
                                    <input type="text" class="form-control" placeholder="1">
                                </td>
                                <td>
                                    <h4>
                                    ₩20,000
                                    </h4>
                                </td>

                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table shoping-cart-table">

                            <tbody>
                            <tr>
                                <td width="90">
                                 <img src="https://ifh.cc/g/FZyNVm.png" alt="..." class="cart-product-imitation">
                                </td>
                                <td class="desc">
                                    <h3>
                                        <a href="#" class="text-navy">
                                            매혹의 걸작들
                                        </a>
                                    </h3>
                                    <p class="small">
                                        2022년 10월 25일 - 2022년 12월 31일
                                    </p>
                                    <dl class="small m-b-none">
                                        <dt>전시장</dt>
                                        <dd>국립중앙박물관 기획전시실</dd>
                                    </dl>
                                    <div class="m-t-sm">

                                        <a href="#" class="text-muted"><i class="fa fa-trash"></i> Remove item</a>
                                    </div>
                                </td>
                                <td>
                                    ₩10,500
                                </td>
                                <td width="65">
                                    <input type="text" class="form-control" placeholder="1">
                                </td>
                                <td>
                                    <h4>
                                    ₩10,500
                                    </h4>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
						<div class="ibox-content">
							<button type="button" class="btn" id="btnCheckout">결제하기</button>
							<button type="button" class="btn" id="btnShopContinue">쇼핑 계속 하기</button>

						</div>
					</div>

        </div>
        <div class="col-md-3">
            <div class="ibox">
                <div class="ibox-title">
                    <h5>Cart Summary</h5>
                </div>
                <div class="ibox-content">
                    <span>
                        Total
                    </span>
                    <h2 class="font-bold">
                        ₩68,500
                    </h2>

                    <hr>
         
                    <div class="m-t-sm">
                        <div class="btn-group">
                        <button type="button" class="btn" id="btnCheckout">결제하기</button>
                         <button type="button" class="btn" id="btnCancel">취소</button>
                        </div>
                    </div>
                </div>
            </div>
                    </div>
                </div>
            </div>
        </div>

</body>








<%@ include file="../layout/footer.jsp" %>