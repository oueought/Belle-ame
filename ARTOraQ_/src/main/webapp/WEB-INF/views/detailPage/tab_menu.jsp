<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     
    <title>ARTORAQ</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">


    <style>
    

        ul.list {
            list-style-type: none;
            margin: 0;
            padding: 0;
            border-bottom: 1px solid #ccc;
        }

        ul.list::after {
            content: '';
            display: block;
            clear: both;
        }

        .tab-button {
            display: block;
            padding: 10px 20px 10px 20px;
            float: left;
            margin-right: -1px;
            margin-bottom: -1px;
            color: grey;
            text-decoration: none;
            cursor: pointer;
        }

        .color {
            border-top: 2px solid #028a0f;
            border-right: 1px solid #ccc;
            border-bottom: 1px solid white;
            border-left: 1px solid #ccc;
            color: black;
            margin-top: -2px;
        }

        .tab-content {
            display: none;
            padding: 10px;
        }
        
        
        .tab_wrap {
        	margin-top: 10%;
        }
        
    </style>


</head>



<body>



    <br><br><br><br><br><br><br><br>
	
	
     <div class="container mt-5">
        <ul class="list">
          <li class="tab-button color">전시 유의사항</li> 
            <li class="tab-button">후기</li>
        </ul>
      
      
      <%@ include file="tab_content01.jsp" %>
      
      <%@ include file="tab_content02.jsp" %> 
      
        
        
   </div>
    
    
<!-- 탭 메뉴 -->    
<script>
for (let i = 0; i < 3; i++) { 
    $('.tab-button').eq(i).on('click', function () {
        $('.tab-button').removeClass('color');
        $('.tab-button').eq(i).addClass('color');
        $('.tab-content').removeClass('show');
        $('.tab-content').eq(i).addClass('show');
        map.relayout();
        map.setCenter(new daum.maps.LatLng(37.567319, 127.009580))
    });
}
</script>

<script>

<!-- comment탭 메뉴 스크립트 -->

document.cookie = "safeCookie1=foo; SameSite=Lax"; 
document.cookie = "safeCookie2=foo"; 
document.cookie = "crossCookie=bar; SameSite=None; Secure";
			
		    function move(url){
		        // ajax option
		        var ajaxOption = {
		                url : url,
		                async : true,
		                type : "GET",
		                dataType : "html",
		                cache : false
			        };
			        
		        $.ajax(ajaxOption).done(function(data){
		            // Contents 영역 삭제
		            $('.result').children().remove();
		            // Contents 영역 교체
		            $('.result').html(data);
			        });
			    }
			
		
</script>


</body>
</html>