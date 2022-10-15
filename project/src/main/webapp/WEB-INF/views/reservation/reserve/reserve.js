/* 예매페에지 */

window.onload = function(){
   var plus = document.querySelector(".plus");
   var minus = document.querySelector(".minus");
   var result = document.querySelector("#result")
   var totalcost = document.querySelector('.totalcost')
   var i = 0;
   
   plus.addEventListener("click", () => {
      i++
      result.textContent = i;
      var totalcostNum = 1*i;
      totalcost.textContent = "인원 수 : " + totalcostNum.toLocaleString();
   })
   
   minus.addEventListener("click", () => {
      if (i>0){
         i--
         result.textContent = i;
         var totalcostNum = 1*i;
         totalcost.textContent = "인원 수 : " + totalcostNum.toLocaleString();
         } else {
            totalcost.textContent = "인원 수 : " + 0
         }
   })
}