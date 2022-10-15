let curPos = 0;

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