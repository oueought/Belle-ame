<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>대표 작품</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
        
     <link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"
/>


        <style>
            html,
            body {
                position: relative;
                height: 100%;

            }

            body {
                font-size: 14px;
                margin: 0;
                padding: 0;
            }

            .swiper {
                width: 100%;
                height: 100%;
            }

            .swiper-slide {
                text-align: center;
                font-size: 18px;
                background: #fff;

                /* Center slide text vertically */
                display: -webkit-box;
                display: -ms-flexbox;
                display: -webkit-flex;
                display: flex;
                -webkit-box-pack: center;
                -ms-flex-pack: center;
                -webkit-justify-content: center;
                justify-content: center;
                -webkit-box-align: center;
                -ms-flex-align: center;
                -webkit-align-items: center;
                align-items: center;
            }

            .swiper-slide img {
                display: block;
                max-width: 30%;
                max-height: 30%;
                overflow: hidden;
                margin-right: 3%;
                margin-left: 3%;
            }
            
           .swiper-pagination {
           		left: 49%;
           } 
            
        </style>

    </head>




    <body>


        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide img">
                    <img class="work_img" src="https://ifh.cc/g/0Jjwx1.jpg">
                    <img class="work_img" src="https://ifh.cc/g/shqm6k.jpg">
                </div>
                <div class="swiper-slide img">
                    <img class="work_img" src="https://ifh.cc/g/Y2BVqL.jpg">
                    <img class="work_img" src="https://ifh.cc/g/C7cKJ1.jpg">
                </div>
                <div class="swiper-slide img">
                    <img class="work_img" src="https://ifh.cc/g/tg2mpk.jpg">
                    <img class="work_img" src="https://ifh.cc/g/FsyPVJ.jpg">
                </div>
                <div class="swiper-slide img">
                    <img class="work_img" src="https://ifh.cc/g/5D3aAZ.jpg">
                    <img class="work_img" src="https://ifh.cc/g/Gvzb9t.jpg">
                </div>





            </div>
            <div class="swiper-pagination"></div>
        </div>






        <!-- 스와이퍼 -->
        <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
        
        <script>
            var swiper = new Swiper(".mySwiper", {
                pagination: {
                    el: ".swiper-pagination",
                    dynamicBullets: true,
                },
            });
        </script>

    </body>

    </html>