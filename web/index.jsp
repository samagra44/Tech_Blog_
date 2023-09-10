<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tech Chronicles</title>
        <!-- Box-icon -->

        <link rel="icon" type="image/x-icon" href="images/logo-removebg-preview-removebg-preview.png">
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,600;0,700;1,400&display=swap');
            *{
                font-family: 'Poppins', sans-serif;
                margin: 0;
                padding: 0;
                scroll-behavior: smooth;
                scroll-padding-top: 2rem;
                box-sizing: border-box;
            }
            body{
                background-color: #1B1A17;
            }
            /* root values */
            :root{
                --container-color: #1a1e21;
                --second-color: rgba(77, 228, 255);
                --text-color: #172317;
                --bg-color: #fff;
            }

            ::selection{
                color: var(--bg-color);
                background: var(--second-color);
            }

            a{
                text-decoration: none;
            }

            li{
                list-style: none;
            }

            img{
                width: 100%;
            }

            section{
                padding: 3rem 0 2rem;
            }

            .container{
                max-width: 1068px;
                margin: auto;
                width: 100%;
            }

            a{
                color: #fff;
            }

            /* Header */
            header{
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                z-index: 200;
            }

            header.shadow{
                background: var(--bg-color);
                box-shadow: 0 1px 4px hsl(0 4% 14% / 10%);
                transition: .5s;
            }

            header.shadow .logo{
                color: var(--text-color);
            }

            .nav{
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 18px 0;
            }

            .logo{
                font-size: 1.5rem;
                font-weight: 600;
                color: var(--bg-color);
            }

            .logo span{
                color: var(--second-color);
            }

            .login{
                padding: 8px 14px;
                text-transform: uppercase;
                font-weight: 500;
                border-radius: 4px;
                background: var(--second-color);
                color: var(--bg-color);
            }

            .login:hover{
                background: hsl(199, 98%, 56%);
                transition: .5s;
            }

            .home{
                width: 100%;
                min-height: 440px;
                background: url("images/banner2.png");
                display: grid;
                justify-content: center;
                align-items: center;
            }

            .home-text{
                color: var(--bg-color);
                text-align: center;
            }

            .home-title{
                font-size: 3.5rem;
            }

            .home-subtitle{
                font-size: 1rem;
                font-weight: 400;
            }

            .about{
                position: relative;
                width: 100%;
                display: flex !important;
                justify-content: center;
                align-items: center;
            }

            .about .contentBx{
                max-width: 50%;
                width: 50%;
                text-align: left;
                padding-right: 40px;
            }

            .titleText{
                font-weight: 600;
                color: #111;
                font-size: 2rem;
                margin-bottom: 10px;
            }

            .title-text{
                color: #111;
                font-size: 1em;
            }

            .about .imgBx{
                position: relative;
                min-width: 50%;
                width: 50%;
                min-height: 500px;
            }

            .btn2{
                position: relative;
                display: inline-block;
                margin-top: 30px;
                padding: 10px 30px;
                background: #fff;
                border: .8px solid #111;
                color: #333;
                text-decoration: none;
                transition: 0.5s;
            }

            .btn2:hover{
                background-color: var(--second-color);
                border: none;
                color: #fff;
            }

            .post-filter{
                display: flex;
                justify-content: center;
                align-items: center;
                column-gap: 1.5rem;
                margin-top: 2rem !important;
            }

            .filter-item{
                font-size: 0.9rem;
                font-weight: 500;
                cursor: pointer;
            }

            .active-filter{
                background: var(--second-color);
                color: var(--bg-color);
                padding: 4px 10px;
                border-radius: 4px;
            }

            .post{
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(280px, auto));
                justify-content: center;
                gap: 1.5rem;
            }

            .post-box{
                background: var(--bg-color);
                box-shadow: 0 4px 14px hsl(35deg 25% 15% / 10%);
                padding: 15px;
                border-radius: 0.5rem;
            }

            .post-img{
                width: 100%;
                height: 200px;
                object-fit: cover;
                object-position: center;
                border-radius: 0.5rem;
            }

            .category{
                font-size: 0.9rem;
                font-weight: 500;
                text-transform: uppercase;
                color: var(--second-color);
            }

            .post-title{
                font-size: 1.3rem;
                font-weight: 600;
                color: var(--text-color);
                display: -webkit-box;
                -webkit-line-clamp: 2;
                -webkit-box-orient: vertical;
                overflow: hidden;
            }

            .post-date{
                display: flex;
                font-size: 0.875rem;
                text-transform: uppercase;
                margin-top: 4px;
                font-weight: 400;
            }

            .post-description{
                font-size: 0.9rem;
                line-height: 1.5rem;
                margin: 5px 0 10px;
                display: -webkit-box;
                -webkit-line-clamp: 2;
                -webkit-box-orient: vertical;
                overflow: hidden;
            }

            .profile{
                display: flex;
                align-items: center;
                gap: 10px;
            }

            .profile-img{
                width: 35px;
                height: 35px;
                border-radius: 50%;
                object-fit: cover;
                object-position: center;
                border: 2px solid var(--second-color);
            }

            .profile-name{
                font-size: .8rem;
                font-weight: 500;
            }

            footer{
                position: relative;
                width: 100%;
                height: auto;
                padding: 50px 100px;
                margin-top: 3rem;
                background: #111;
                display: flex;
                font-family: sans-serif;
                justify-content: space-between;
            }

            .footer-container{
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
                flex-direction: row;
            }

            .footer-container .sec{
                margin-right: 30px;
            }

            .footer-container .sec.aboutus{
                width: 40%;
            }

            .footer-container h2{
                position: relative;
                color: #fff;
                margin-bottom: 15px;
            }

            .footer-container h2::before{
                content: '';
                position: absolute;
                bottom: -5px;
                left: 0;
                width: 50px;
                height: 2px;
                background: rgb(77, 228, 255);
            }

            footer p{
                color: #fff;
            }

            .sci{
                margin: 20px;
                display: flex;
            }

            .sci li{
                list-style: none;
            }

            .sci li a{
                display: inline-block;
                width: 40px;
                height: 40px;
                background: #222;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-right: 10px;
                text-decoration: none;
                border-radius: 4px;
                transition: .5s;
            }

            .sci li a:hover{
                background: rgb(77, 228, 255);
            }

            .sci i a .bx{
                color: #fff;
                font-size: 20px;
            }

            .quicklinks{
                position: relative;
                width: 25%;
            }

            .quicklinks ul li{
                list-style: none;
            }

            .quicklinks ul li a{
                color: #999;
                text-decoration: none;
                margin-bottom: 10px;
                display: inline-block;
                transition: .3s;
            }

            .quicklinks ul li a:hover{
                color: #fff;
            }

            .footer-container .contactBx{
                width: calc(35% - 60px);
                margin-right: 0 !important;
            }

            .contactBx .info{
                position: relative;
            }

            .contactBx .info li{
                display: flex !important;
                margin-bottom: 16px;
            }

            .contactBx .info li span:nth-child(1){
                color: #fff;
                font-size: 20px;
                margin-right: 10px;
            }

            .contactBx .info li span{
                color: #999;
            }

            .contactBx .info li a{
                color: #999;
                text-decoration: none;
                transition: .5s;
            }

            .contactBx .info li a:hover{
                color: #fff;
            }

            @media (max-width: 1060px){
                .container{
                    margin: 0 auto;
                    width: 95%;
                }

                .home-text{
                    width: 100%
                }
            }

            @media (max-width: 768px){
                .nav{
                    padding: 10px 0;
                }

                section{
                    padding: 2rem 0 !important;
                }

                .header-content{
                    margin-top: 3rem !important;
                }

                .home{
                    min-height: 380px;
                }

                .home-title{
                    font-size: 3rem;
                }

                .header-title{
                    font-size: 2rem;
                }

                .header-img{
                    height: 370px;
                }

                .about{
                    flex-direction: column;
                }

                .about .contentBx{
                    min-width: 100%;
                    width: 100%;
                    text-align: center;
                    padding-right: 0px;
                }

                .about .contentBx,
                .about .imgBx{
                    min-width: 100%;
                    width: 100%;
                    padding-right: 0px;
                    text-align: center;
                }

                .about .imgBx{
                    min-height: 250px;
                }

                .btn2{
                    margin-bottom: 30px;
                }

                .post-header{
                    height: 435px;
                }

                .post-header{
                    margin-top: 9rem !important;
                }
            }

            @media (max-width: 570px){
                .post-header{
                    height: 390px;
                }

                .header-title{
                    width: 100%;
                }

                .header-img{
                    height: 340px;
                }
            }

            @media (max-width: 396px){
                .home-title{
                    font-size: 2rem;
                }

                .home-subtitle{
                    font-size: 0.9rem;
                }

                .home{
                    min-height: 300px;
                }

                .post-box{
                    padding: 10px;
                }

                .header-title{
                    font-size: 1.4rem;
                }

                .header-img{
                    height: 240px;
                }

                .post-header{
                    height: 335px;
                }

                .header-img{
                    height: 340px;
                }
            }

            /* Footer Media Query */
            @media (max-width: 991px){
                footer{
                    padding: 40px;
                    font-size: 20px;
                }

                footer .footer-container{
                    flex-direction: column;
                }

                footer .footer-container .sec{
                    margin-right: 0;
                    margin-bottom: 40px;
                }

                footer .footer-container .sec.aboutus{
                    width: 100% !important;
                }

                footer .footer-container .quicklinks{
                    width: 100%;
                }

                footer .footer-container .contactBx{
                    width: 100%;
                }
            }

            #slider{
                height: 300px;
            }


            #slider
            {
                margin: auto;
                overflow: hidden;
                padding: 20px;
                margin-top: 50px;
                position: relative;
                width: 600px;
            }

            #slider li
            {
                float: left;
                position: relative;
                width: 600px;
                display: inline-block;
                height: 200px;
            }

            #slider ul
            {
                list-style: none;
                position: absolute;
                left: 0px;
                top: 0px;
                width: 9000px;
                transition: left .2s linear;
                -moz-transition: left .2s linear;
                -o-transition: left .2s linear;
                -webkit-transition: left .2s linear;
                margin-left: -25px;
                font-family: open sans;
                color: #666;
            }

            /*** Content ***/

            .slider-container
            {
                color:#000;
                margin: 0 auto;
                padding: 0;
                width: 550px;
                min-height: 180px;
                text-align:center;
            }

            .slider-container h2
            {
                color: #fff;
            }

            .slider-container  p
            {
                margin: 10px 25px;
                font-weight: semi-bold;
                line-height: 150%;
            }

            /*** target hooks ****/

            @-webkit-keyframes slide-animation {
                0% {
                    opacity:0;
                }
                2% {
                    opacity:1;
                }
                20% {
                    left:0px;
                    opacity:1;
                }
                22.5% {
                    opacity:0.6;
                }
                25% {
                    left:-600px;
                    opacity:1;
                }
                45% {
                    left:-600px;
                    opacity:1;
                }
                47.5% {
                    opacity:0.6;
                }
                50% {
                    left:-1200px;
                    opacity:1;
                }
                70% {
                    left:-1200px;
                    opacity:1;
                }
                72.5% {
                    opacity:0.6;
                }
                75% {
                    left:-1800px;
                    opacity:1;
                }
                95% {
                    opacity:1;
                }
                98% {
                    left:-1800px;
                    opacity:0;
                }
                100% {
                    left:0px;
                    opacity:0;
                }
            }

            #slider ul
            {
                -webkit-animation: slide-animation 20s infinite;
            }

            #slider ul:hover
            {
                -moz-animation-play-state: paused;
                -webkit-animation-play-state: paused;
            }




        </style>
    </head>

    <body>
        <header data-aos="slide-right">
            <%@include file="navbar.jsp" %>
        </header>

        <section class="home" id="home" data-aos="fade-up">
            <div class="home-text container" data-aos="fade-up">
                <h2 class="home-title">Tech Chronicles</h2>
                <a href="register_page.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-sign-in"></span> Starts ! It's FREE !!</a>
                <a href="login_page.jsp"class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle fa-spin"></span> Login</a>
            </div>
        </section>

        <section class="about container" id="about" data-aos="fade-up">
            <div class="contentBx" data-aos="fade-up">
                <h2 class="titleText text-white" data-aos="fade-up">Catch up with the trending topics</h2>
                <hr>
                <p class="title-text text-white" data-aos="fade-up">
                    Welcome to our tech blog TECH CHRONICLES, a platform where you can find the latest updates, news, and insights into the world of technology. As a technology enthusiast and a keen observer of the industry,We are passionate about exploring the latest advancements and trends in various domains such as artificial intelligence, machine learning, internet of things, cybersecurity, and more.
                    <br>
                    <br>
                    With the exponential growth in the tech industry, it has become more important than ever to stay up-to-date with the latest developments. Through my blog, we aim to provide a comprehensive understanding of the emerging technologies, their impact on various industries, and the challenges and opportunities they bring.
                </p>
                <a href="#" class="btn2">Read more</a>
            </div>
            <div class="imgBx" data-aos="fade-up">
                <img src="images/simon-abrams-k_T9Zj3SE8k-unsplash.jpg" alt="" style="height: 80vh;" class="fitBg img-rounded" data-aos="flip-up">
            </div>
        </section>

        <div class="post-filter container" data-aos="fade-up">
            <span class="filter-item active-filter text-white" data-filter="all">All</span>
            <span class="filter-item text-white" data-filter="tech">Tech</span>
            <span class="filter-item text-white" data-filter="food">Food</span>
            <span class="filter-item text-white" data-filter="news">News</span>
        </div>
        <br>
        <div class="post container">
            <!-- Post 1 -->
            <div class="post-box tech bg-dark text-white" data-aos="fade-up">
                <img src="images/img1.jpg" alt="" class="post-img bg-dark">
                <hr>
                <h2 class="category">Tech</h2>
                <a href="#" class="post-title text-warning">How to create the best UI with Figma</a>
             
                <p class="post-description">Design and Technology (D&T or DT) is a school subject offered at all l..</p>

            </div>
            <!-- Post 2 -->
            <div class="post-box food bg-dark text-white" data-aos="fade-up">
                <img src="images/img2.jpg" alt="" class="post-img">
                <hr>
                <h2 class="category">Tech</h2>
                <a href="#" class="post-title text-warning">Technological advancements have led to significant changes in society.</a>
               
                <p class="post-description">Technology is the application of knowledge for achieving practical goals in a reproducible way.[1] The word technology can also mean the products resulting from such effort</p>

            </div>
            <!-- Post 3 -->
            <div class="post-box food bg-dark text-white" data-aos="fade-up">
                <img src="images/img3.jpg" alt="" class="post-img">
                <hr>
                <h2 class="category">Food</h2>
                <a href="#" class="post-title text-warning">Food is any substance consumed by an organism for nutritional support</a>
               
                <p class="post-description">Food is any substance consumed by an organism for nutritional support....</p>

            </div>
            <!-- Post 4 -->
            <div class="post-box news bg-dark text-white" data-aos="fade-up">
                <img src="images/img4.jpg" alt="" class="post-img">
                <hr>
                <h2 class="category">Tech</h2>
                <a href="#" class="post-title text-warning">Technology contributes to economic development and improves human prosperity</a>
              
                <p class="post-description">technology contributes to economic development and improves human prosperity..</p>

            </div>
            <!-- Post 5 -->
            <div class="post-box tech bg-dark text-white" data-aos="fade-up">
                <img src="images/img5.jpg" alt="" class="post-img">
                <hr>
                <h2 class="category">Tech</h2>
                <a href="#" class="post-title text-warning">Technology is a term dating back to the early 17th century that meant 'systematic</a>
                
                <p class="post-description">Technology is a term dating back to the early 17th century that meant 'systematic.......</p>

            </div>
            <!-- Post 6 -->
            <div class="post-box news bg-dark text-white" data-aos="fade-up">
                <img src="images/img4.jpg" alt="" class="post-img">
                <hr>
                <h2 class="category">News</h2>
                <a href="#" class="post-title text-warning">News is information about current events</a>
               
                <p class="post-description">News is information about current events. This may be provided through many different media: word of mouth, printing, postal systems, broadcasting, electronic communication, or through the testimony of observers and witnesses to events. News is sometimes called "hard news" to differentiate it from soft media.</p>

            </div>
            <!-- Post 7 -->
            <div class="post-box tech bg-dark text-white" data-aos="fade-up">
                <img src="images/img7.jpg" alt="" class="post-img">
                <hr>
                <h2 class="category">Tech</h2>
                <a href="#" class="post-title text-warning">ools were initially developed by hominids through observation and trial and error.[</a>
               
                <p class="post-description">ools were initially developed by hominids through observation and trial and error.[8] Around 2 Mya (million years ago), they learned to make the first stone tools by hammering flakes off a pebble, forming a sharp hand axe.[9].....</p>

            </div>
            <!-- Post 1 -->
            <div class="post-box news bg-dark text-white" data-aos="fade-up">
                <img src="images/img8.jpg" alt="" class="post-img">
                <hr>
                <h2 class="category">News</h2>
                <a href="#" class="post-title text-warning">The discovery of fire was described by Charles Darwin as "possibly the greatest ever made by man"</a>
               
                <p class="post-description">The discovery of fire was described by Charles Darwin as "possibly the greatest ever made by man"..</p>

            </div>
            <!-- Post 9 -->
            <div class="post-box food bg-dark text-white" data-aos="fade-up">
                <img src="images/img10.jpg" alt="" class="post-img">
                <hr>
                <h2 class="category">Food</h2>
                <a href="#" class="post-title text-warning">Food is any substance consumed by an organism for nutritional support.</a>
            
                <p class="post-description">Food is any substance consumed by an organism for nutritional support. Food is usually of plant, animal, or fungal origin, and contains essential nutrients, such as carbohydrates, fats,</p>

            </div>
        </div>

        <section>
            <div class="post-filter container">
                <span class="filter-item active-filter text-white" style="font-size: 25px;" data-filter="all">What we have for you <span class="fa fa-handshake-o"></span>
            </div>
            <br>
             <p class="text-white text-center">We have a large variety of blogs available with different categories like Entertainment, Sports, News, Food and Drinks, Technology, Education and many more........</p>
             <p class="text-white text-center">Just create your account and boom!!! you will indulge in a treasure trove of knowledge.</p>
              <p class="text-white text-center">So join with us on this exciting journey and let's explore the world of technology togather !.</p>
            <div id="slider">
                <ul>
                    <li>
                        <div class="slider-container">
                            <img src="car_img/campaign-creators-yktK2qaiVHI-unsplash.jpg" alt="alt"/>
                        </div>
                    </li>


                    <li>
                        <div class="slider-container">
                            <img src="car_img/markus-spiske-BTKF6G-O8fU-unsplash.jpg" alt="alt"/>                       
                        </div>
                    </li>
                    <li>
                        <div class="slider-container">
                            <img src="car_img/absolutvision-WYd_PkCa1BY-unsplash.jpg" alt="alt"/>
                        </div>
                    </li>
                    <li>
                        <div class="slider-container">
                            <img src="car_img/danny-howe-Hq9BwndSFAY-unsplash.jpg" alt="alt"/>
                        </div>
                    </li>
                    <li>
                        <div class="slider-container">
                            <img src="car_img/dino-reichmuth-A5rCN8626Ck-unsplash.jpg" alt="alt"/>
                        </div>
                    </li>
                    <!--                    <li>
                                            <div class="slider-container">
                                                <img src="car_img/carl-raw-m3hn2Kn5Bns-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>
                                         <li>
                                            <div class="slider-container">
                                                <img src="car_img/martin-shreder-5Xwaj9gaR0g-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>
                                         <li>
                                            <div class="slider-container">
                                                <img src="car_img/alex-knight-2EJCSULRwC8-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>-->
                    <!--                     <li>
                                            <div class="slider-container">
                                                <img src="car_img/jaredd-craig-HH4WBGNyltc-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>
                                         <li>
                                            <div class="slider-container">
                                                <img src="car_img/absolutvision-WYd_PkCa1BY-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>
                                         <li>
                                            <div class="slider-container">
                                                <img src="car_img/filip-mishevski-c5QdMcuFlgY-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>
                                         <li>
                                            <div class="slider-container">
                                                <img src="car_img/mollie-sivaram-yubCnXAA3H8-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>
                                         <li>
                                            <div class="slider-container">
                                                <img src="car_img/danny-howe-Hq9BwndSFAY-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>
                                         <li>
                                            <div class="slider-container">
                                                <img src="car_img/tom-barrett-M0AWNxnLaMw-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="slider-container">
                                                <img src="car_img/jay-wennington-N_Y88TWmGwA-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="slider-container">
                                                <img src="car_img/dino-reichmuth-A5rCN8626Ck-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="slider-container">
                                                <img src="car_img/carl-raw-m3hn2Kn5Bns-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="slider-container">
                                                <img src="car_img/alex-knight-2EJCSULRwC8-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="slider-container">
                                                <img src="car_img/fitsum-admasu-oGv9xIl7DkY-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="slider-container">
                                                <img src="car_img/tim-gouw-VvQSzMJ_h0U-unsplash.jpg" alt="alt"/>
                                            </div>
                                        </li>-->
                </ul>
            </div>

        </section>

        <footer>
            <div class="footer-container" data-aos="flip-down">
                <div class="sec aboutus">
                    <h2>About Us</h2>
                    <p>Our team of expert writers and contributors are passionate about all things tech, and we bring our unique perspectives and insights to every article we publish. Whether you're a seasoned tech enthusiast or a newcomer to the world of technology, our website has something for everyone.
                    </p>
                    <ul class="sci">
                        <li><a href="#"><i class="bx bxl-facebook"></i></a></li>
                        <li><a href="#"><i class="bx bxl-instagram"></i></a></li>
                        <li><a href="#"><i class="bx bxl-twitter"></i></a></li>
                        <li><a href="#"><i class="bx bxl-linkedin"></i></a></li>
                    </ul>
                </div>
                <div class="sec quicklinks">
                    <h2>Quick Links</h2>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                    </ul>
                </div>
                <div class="sec contactBx">
                    <h2>Contact Info</h2>
                    <ul class="info">
                        <li>
                            <span><i class='bx bxs-map'></i></span>
                            <span>301 MIG VIJAY NAGAR <br> Madhya Pradesh <br> India</span>
                        </li>
                        <li>
                            <span><i class='bx bx-envelope'></i></span>
                            <p><a href="mailto:codemyhobby9@gmail.com">samagra6424@gmail.com</a></p>
                        </li>
                    </ul>
                </div>
            </div>
        </footer>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
                integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script
            src="https://code.jquery.com/jquery-3.6.4.min.js"
            integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
        crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script>
            // nav background
            let header = document.querySelector("header");

            window.addEventListener("scroll", () => {
                header.classList.toggle("shadow", window.scrollY > 0)
            })

            //Filter
            $(document).ready(function () {
                $(".filter-item").click(function () {
                    const value = $(this).attr("data-filter");
                    if (value == "all") {
                        $(".post-box").show("1000")
                    } else {
                        $(".post-box")
                                .not("." + value)
                                .hide(1000);
                        $(".post-box")
                                .filter("." + value)
                                .show("1000")
                    }
                });
                $(".filter-item").click(function () {
                    $(this).addClass("active-filter").siblings().removeClass("active-filter")
                });
            });
        </script>
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script>
            AOS.init({
                offset: 120,
                duration: 900
            });
        </script> 

    </body>

</html>