<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Services Section Using Bootstrap 4</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/fontawesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins:500,700&display=swap" rel="stylesheet">

    </head>
    <style>
        a,
p,
h1,
h2,
h3,
h4,
ul {
  margin: 0;
  padding: 0;
}

.section-services {
  padding-top: 110px;
  padding-bottom: 120px;
  font-family: "Poppins", sans-serif;
  background-color: #211f24;
  color: #fff;
}

.section-services .header-section {
  margin-bottom: 35px;
}

.section-services .header-section .title {
  position: relative;
  margin-bottom: 40px;
  padding-bottom: 25px;
  text-transform: uppercase;
  font-weight: 700;
}

.section-services .header-section .title:before {
  content: "";
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
  width: 140px;
  height: 1px;
  background-color: #f70037;
}

.section-services .header-section .title:after {
  content: "";
  position: absolute;
  bottom: -1px;
  left: 50%;
  transform: translateX(-50%);
  width: 45px;
  height: 3px;
  background-color: #f70037;
}

.section-services .header-section .title span {
  color: #f70037;
}

.section-services .header-section .description {
  color: #6f6f71;
}

.section-services .single-service {
  margin-top: 40px;
  background-color: #24252a;
  box-shadow: 0 0 10px 0 rgba(0, 0, 0, .1);
}

.section-services .single-service .part-1 {
  padding: 40px 40px 25px;
  border-bottom: 2px solid #1d1e23;
}

.section-services .single-service .part-1 i {
  margin-bottom: 25px;
  font-size: 50px;
  color: #f70037;
}

.section-services .single-service .part-1 .title {
  font-size: 17px;
  font-weight: 700;
  letter-spacing: 0.02em;
  line-height: 1.8em;
}

.section-services .single-service .part-2 {
  padding: 30px 40px 40px;
}

.section-services .single-service .part-2 .description {
  margin-bottom: 22px;
  color: #6f6f71;
  font-size: 14px;
  line-height: 1.8em;
}

.section-services .single-service .part-2 a {
  color: #fff;
  font-size: 14px;
  text-decoration: none;
}

.section-services .single-service .part-2 a i {
  margin-right: 10px;
  color: #f70037;
}
    </style>
    <body>

        <section class="section-services">
            <div class="container">
                <div class="row justify-content-center text-center">
                    <div class="col-md-10 col-lg-8">
                        <div class="header-section">
                            <h2 class="title">Exclusive <span>Services</span></h2>
                            <p class="description">Whether you are a tech-savvy individual or someone who is just getting started in the world of technology, my blog is the perfect platform for you to gain valuable insights, learn about the latest trends, and stay informed about the future of technology.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Start Single Service -->
                    <div class="col-md-6 col-lg-4">
                        <div class="single-service">
                            <div class="part-1">
                                <i class="fab fa-500px"></i>
                                <h3 class="title">Add post / Upload post</h3>
                            </div>
                            <div class="part-2">
                                <p class="description">Share your knowledge with the world by uploading post that includes post category, post headline, post content and post image.</p>
                              
                            </div>
                        </div>
                    </div>
                    <!-- / End Single Service -->
                    <!-- Start Single Service -->
                    <div class="col-md-6 col-lg-4">
                        <div class="single-service">
                            <div class="part-1">
                                <i class="fab fa-angellist"></i>
                                <h3 class="title">Like / Comment / Share</h3>
                            </div>
                            <div class="part-2">
                                <p class="description">The users can also follow other users and view their posts. They can also search for posts by keywords. They can also view the posts of people they follow in their news feed.</p>
                              
                            </div>
                        </div>
                    </div>
                    <!-- / End Single Service -->
                    <!-- Start Single Service -->
                    <div class="col-md-6 col-lg-4">
                        <div class="single-service">
                            <div class="part-1">
                                <i class="fas fa-award"></i>
                                <h3 class="title">Various Categories</h3>
                            </div>
                            <div class="part-2">
                                <p class="description">We provide wide range of categories to our users so that they can share their knowledge in various fields. Categories like News, Movies, Technology, Education etc.. </p>
                               
                            </div>
                        </div>
                    </div>
                    <!-- / End Single Service -->
                    <!-- Start Single Service -->
                    <div class="col-md-6 col-lg-4">
                        <div class="single-service">
                            <div class="part-1">
                                <i class="fab fa-asymmetrik"></i>
                                <h3 class="title">Search Post</h3>
                            </div>
                            <div class="part-2">
                                <p class="description">They will also be able to filter the posts by category, date, and author. This will allow users to quickly find the posts they are looking for. Additionally, users will be able to comment on posts and share them with their friends.</p>
                             
                            </div>
                        </div>
                    </div>
                    <!-- / End Single Service -->
                    <!-- Start Single Service -->
                    <div class="col-md-6 col-lg-4">
                        <div class="single-service">
                            <div class="part-1">
                                <i class="fas fa-broadcast-tower"></i>
                                <h3 class="title">View / Edit Profile</h3>
                            </div>
                            <div class="part-2">
                                <p class="description">Users will also be able to view other users' profiles and follow them. They will be able to comment on posts and like posts. They will also be able to search for other users and view their posts.</p>
                               
                            </div>
                        </div>
                    </div>
                    <!-- / End Single Service -->
                    <!-- Start Single Service -->
                    <div class="col-md-6 col-lg-4">
                        <div class="single-service">
                            <div class="part-1">
                                <i class="fab fa-canadian-maple-leaf"></i>
                                <h3 class="title">Problem Solutions</h3>
                            </div>
                            <div class="part-2">
                                <p class="description">We provide 24/7 customer service to our users. If user faces any problem or issue we help them by providing solutions.And also provide technical support to the users.</p>
                                
                            </div>
                        </div>
                    </div>
                    <!-- / End Single Service -->
                </div>
            </div>
        </section>

    </body>
</html>