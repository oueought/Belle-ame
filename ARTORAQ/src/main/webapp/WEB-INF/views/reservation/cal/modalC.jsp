<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약을 원하시는 날짜를 선택해 주세요</title>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!--script-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.2/dist/js/bootstrap.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.2/dist/css/bootstrap.min.css" >

<style type="text/css">

.modal-content {
    position: relative;
    width: 600px;
    height: 620px;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #999;
    border: 1px solid rgba(0,0,0,.2);
    border-radius: 6px;
    outline: 0;
    -webkit-box-shadow: 0 3px 9px rgb(0 0 0 / 50%);
    box-shadow: 0 3px 9px rgb(0 0 0 / 50%);
}

.modal-body {
    position: relative;
    padding: 15px;
    height: 486px;
}

#myModalLabel {
   
   margin-top: 10px;
   margin-left: 200px;
   font-weight: bold;
}

.modal-footer {

   margin-right: 35px;
   font-weight: bold;
}

.btn btn-default {
	margin-bottom: 10px;
}

</style>


</head>
<body>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  예매하기
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">날짜를 선택해 주세요</h4>
      </div>
      <div class="modal-body">
      
     <%@ include file= "cal.jsp" %>
      
      </div>
      <div class="modal-footer">
         <button type="button" class="btn btn-default" data-dismiss="modal"><b>취소</b></button>
        <button type="button" class="btn btn-primary"><b>결제</b></button>
      </div>
    </div>
  </div>
</div>

</body>
</html>