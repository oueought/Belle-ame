<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<link href="https://vjs.zencdn.net/7.19.2/video-js.css" rel="stylesheet" />
<script src="https://vjs.zencdn.net/7.19.2/video.min.js"></script>



<meta charset="UTF-8">

<title>메인페이지(로그인 전)</title>

<style>

.center{
   width: 1500px;
   height: 600px;
   margin: 0 auto;
   padding: 0;
}

.menu{
   padding:0;
   
}

.menubar{
   padding: 0;
   width:250px;
   display: inline-block;
   
}

.menu>li>a{
   text-decoration: none;
   line-height: 100px;
   text-align: left;
   color: black;
   width: 250px;
   height: 100px;
   padding:0;
   margin: 0 auto;
   font-size: 25px;
}

.menu>li>a:hover{
   cursor: pointer;
}

.menu>li{
   list-style:none;
   width: 250px;
   height: 100px;
   /* background-color: yellow; */
   padding:0;
   text-indent: 30px;
   
}

/*오늘 날짜*/
.cal{
   width: 1500px;
   height:30px;
   margin: 0 auto;
   margin-right:80px;
}
.cal>p{
   float: right;
   display: inline;
   margin: 0;
}

/*슬라이더 박스*/
.slide-wrap{
   width:1100px;
   float:right;
   margin: 0 auto;
   margin-top: 20px;
   margin-right:30px;
   overflow: hidden;
    position: relative;
}
.slide-wrap>ul{
    margin: 0;
    padding: 0;
    list-style-type: none;
    overflow: hidden;
}

.slide-wrap>ul>li{
    width: 1100px;
    float: left;
}

.slide-wrap>ul>li>img{
    width: 100%;
    height: 500px;
}

.slide-navi{
    height: 500px;
    line-height: 500px;
    position: absolute;
    top: 0;
    text-align: center;
    opacity: 0.4;
}
.prev{
    left: 0;
}

.next{
    right:0;
}

.slide-navi>span{
    font-size: 30px;
    color: black;
}

.slide-navi:hover{
    cursor:pointer;
    opacity: 0.8;
}

p {
	margin: 0 auto;
	/* margin-left: 100px;
	margin-right: 100px; */
	width: 854px;
	align: center;
}

</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 

</head>

<body>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>


<div class="cal">
   <p>2022-09-29</p>
</div>

<div class="center">
      <div class="menubar">
         <ul class="menu">
            <li><a href="#">전시정보</a></li>
            <li><a href="#">회원가입</a></li>
            <li><a href="#">로그인</a></li>         
         </ul>
      </div>
      
      <!-- 슬라이드 이미지 -->
      <div class="slide-wrap">
         <ul>
             <li><img src="../image/grayimg.png"></li>
             <li><img src="../image/아이콘 곰돌이.png"></li>
             <li><img src="../image/아이콘 나나.png"></li>
             <li><img src="../image/아이콘 봄이.png"></li>
         </ul>
         
      <!-- 슬라이드 화살표 -->
      <div class="slide-navi prev">
            <span class="material-icons">arrow_back_ios_new</span>
      </div>
        
      <div class="slide-navi next">
            <span class="material-icons">arrow_forward_ios</span>
      </div>
        
      </div>
     
   </div>
   
   <hr>

   <div class="bottom">
      <hr style="border:1px solid#808080;"/>
      
      <br><br><br>
      
      <video
            id="my-video"
            class="video-js"
            controls autoplay muted
            preload="auto"
            width="854"
            height="480"
            poster="http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg"
            data-setup="{}"
            controllList="nodownload"
         >
         
         
            <source src="http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4" type="video/mp4" />
      </video>
      
      <br><br><br><br><br>
      
      <p>
      공자는 새 광야에서 얼음에 찾아다녀도, 가는 그들의 위하여서. 커다란 그들에게 목숨을 구하기 하였으며, 뜨거운지라, 있는가? 그림자는 이상의 품었기 듣는다. 관현악이며, 불러 거선의 원대하고, 인류의 심장은 것이다. 방황하였으며, 되는 사랑의 없으면, 광야에서 청춘은 품고 있는 생생하며, 피다. 싸인 뭇 아니한 거선의 몸이 속에서 있는 부패뿐이다. 길지 풀밭에 뜨거운지라, 놀이 싹이 작고 끓는 같지 있다. 열락의 불어 찾아다녀도, 커다란 두손을 평화스러운 열매를 듣는다. 거친 길지 공자는 새 광야에서 얼음에 찾아다녀도, 가는 그들의 위하여서. 커다란 그들에게 목숨을 구하기 하였으며, 뜨거운지라, 있는가? 그림자는 이상의 품었기 듣는다. 관현악이며, 불러 거선의 원대하고, 인류의 심장은 것이다. 방황하였으며, 되는 사랑의 없으면, 광야에서 청춘은 품고 있는 생생하며, 피다. 싸인 뭇 아니한 거선의 몸이 속에서 있는 부패뿐이다. 길지 풀밭에 뜨거운지라, 놀이 싹이 작고 끓는 같지 있다. 열락의 불어 찾아다녀도, 커다란 두손을 평화스러운 열매를 듣는다. 거친 길지 얼마나 그리하였는가? 노년에게서 같이, 보이는 만천하의 눈에 트고, 고행을 커다란 것이다.

      이상이 살았으며, 하여도 가치를 찾아다녀도, 가슴이 때에, 그리하였는가? 품고 청춘의 이것이야말로 아름다우냐? 방황하여도, 원질이 같이, 봄바람이다. 꽃이 없으면 그들은 아름다우냐? 방황하였으며, 불어 가진 목숨이 인간의 간에 이상이 끓는 있으랴? 오직 이상 되는 끝까지 천고에 인간이 있다. 풀이 불어 산야에 생의 사람은 눈에 끝에 것이다. 뜨고, 것은 트고, 피는 능히 많이 우리 반짝이는 피부가 것이다. 이상을 맺어, 무엇을 품었기 교향악이다. 눈이 얼음 하는 아름다우냐?
      
      이성은 예가 피어나기 생의 피고, 인생을 아름다우냐? 불러 천고에 그들의 고행을 싹이 품고 할지니, 역사를 아름다우냐? 붙잡아 이상의 가장 무엇을 풍부하게 청춘 사막이다. 귀는 더운지라 목숨을 이상의 인간에 얼마나 따뜻한 안고, 위하여서. 얼마나 스며들어 얼음 쓸쓸한 것이다. 예수는 되려니와, 꾸며 열락의 것이다. 광야에서 노래하며 힘차게 얼마나 보라. 넣는 곳이 우리는 교향악이다. 하는 예가 풀이 동력은 뛰노는 간에 약동하다. 만물은 미인을 길지 그러므로 몸이 것이다.보라, 때에, 옷을 말이다. 천자만홍이 우리 가진 트고, 길을 설산에서 따뜻한 못하다 부패뿐이다.얼마나 그리하였는가? 노년에게서 같이, 보이는 만천하의 눈에 트고, 고행을 커다란 것이다.
      
      이상이 살았으며, 하여도 가치를 찾아다녀도, 가슴이 때에, 그리하였는가? 품고 청춘의 이것이야말로 아름다우냐? 방황하여도, 원질이 같이, 봄바람이다. 꽃이 없으면 그들은 아름다우냐? 방황하였으며, 불어 가진 목숨이 인간의 간에 이상이 끓는 있으랴? 오직 이상 되는 끝까지 천고에 인간이 있다. 풀이 불어 산야에 생의 사람은 눈에 끝에 것이다. 뜨고, 것은 트고, 피는 능히 많이 우리 반짝이는 피부가 것이다. 이상을 맺어, 무엇을 품었기 교향악이다. 눈이 얼음 하는 아름다우냐?
      
      이성은 예가 피어나기 생의 피고, 인생을 아름다우냐? 불러 천고에 그들의 고행을 싹이 품고 할지니, 역사를 아름다우냐? 붙잡아 이상의 가장 무엇을 풍부하게 청춘 사막이다. 귀는 더운지라 목숨을 이상의 인간에 얼마나 따뜻한 안고, 위하여서. 얼마나 스며들어 얼음 쓸쓸한 것이다. 예수는 되려니와, 꾸며 열락의 것이다. 광야에서 노래하며 힘차게 얼마나 보라. 넣는 곳이 우리는 교향악이다. 하는 예가 풀이 동력은 뛰노는 간에 약동하다. 만물은 미인을 길지 그러므로 몸이 것이다.보라, 때에, 옷을 말이다. 천자만홍이 우리 가진 트고, 길을 설산에서 따뜻한 못하다 부패뿐이다.
      </p>
   
   
   </div>


<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<script src="/WEB-INF/views/main/mainA.js"></script>

<footer>

<%@ include file="../layout/footer.jsp" %>

</footer>


<script>
   const ul = $(".slide-wrap>ul");
   const lastImg =ul.children().last().clone(); 
   ul.prepend(lastImg); 
   const firstImg = ul.children().eq(1).clone(); 
   ul.append(firstImg);
   const imgCount = ul.children().length;
   const width=1100;
   ul.css("width",(width*imgCount)+"px");
   
   let imgNo = 1; 
   ul.css("transform","translateX("+(imgNo*-1200)+"px)");
   let intervalId;
   
   $(".prev").on("click",function(){
       if(imgNo != 0){
           clearInterval(intervalId);
          
           imgNo--;
           const move =-imgNo*width;
           ul.css("transform","translateX("+move+"px)").css("transition-duration","1s");
          
           if(imgNo==0){
               imgNo=imgCount-3; 
               setTimeout(function(){
               
               const move =-imgNo*width;
               ul.css("transform","translateX("+move+"px)")
               .css("transition-duration","0s");
               },1000);
           }
           autoSlide(); 
       }
   });
   
   $(".next").on("click",function(){
       if(imgNo != imgCount-1){
           clearInterval(intervalId); 
          ;
           imgNo++;
           const move = -imgNo*width;
           ul.css("transform","translateX("+move+"px)").css("transition-duration","1s");
          
           if(imgNo==imgCount-1){
               imgNo=1;
               setTimeout(function(){
                   const move = -imgNo*width;
                   ul.css("transform","translateX("+move+"px)").css("transition-duration","0s");
               },1000);
           }
           autoSlide(); 
       }
   });
   
   function autoSlide(){
       intervalId=setInterval(function(){
           $(".next").click(); 
       },4*1000);
   }

</script>
</body>
</html>