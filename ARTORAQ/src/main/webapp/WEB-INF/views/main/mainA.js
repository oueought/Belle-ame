$(document).ready(function() {
   
   var $slider_list = $("#slider li")
   console.log( $slider_list )
   
   $slider_list.css("left", $("#sliderbox").css("width"))
   

   $slider_list.eq(0).css("left", 0)
   
   var sliderClick = function() {
      $("#sliderbox").click()
   }
   
   var timerid = setInterval( sliderClick, 3000 )
   
   var curSlide = 0;
   
   $("#sliderbox").click(function() {


   clearInterval( timerid )

   timerid = setInterval( sliderClick, 3000 );
      
   var nextSlide = curSlide + 1;
      nextSlide %= $slider_list.length;
      console.log( curSlide, ":", nextSlide )
      

      $slider_list.eq(curSlide).animate( { "left": "-="+$("#sliderbox").css("width") } )

      $slider_list.eq(nextSlide).css( "left", $("#sliderbox").css("width") )

      $slider_list.eq(nextSlide).animate( { "left": "-="+$("#sliderbox").css("width") } )

      curSlide++;
      curSlide %= $slider_list.length;
   })
   
})


const video = document.getElementById('my-video');

     video.addEventListener('play', (event) => {
        console.log('play');
    });
    video.addEventListener('pause', (event) => {
        console.log('pause');
    });
    video.addEventListener('ended', (event) => {
        console.log('ended');
   });