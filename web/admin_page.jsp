<%-- 
    Document   : admin_page
    Created on : Apr 28, 2023, 10:54:20 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.tech.blog.entities.Post" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Trirong">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .bg-sam{
                background-color: #E11299;
            }
            .bg-sh{
                background-color: #6C9BCF;
            }
            .bg-tan{
                background-color: #B2A4FF;
            }
            .bg-shi{
                background-color: #D864A9;
            }
            .bg-bha{
                background-color: #EA5455;
            }

            .sidebar {
                margin: 0;
                padding: 0;
                width: 200px;
                background-color: #F7DB6A;
                position: fixed;
                height: 100%;
                overflow: auto;
            }

            .sidebar a {
                display: block;
                color: black;
                padding: 16px;
                text-decoration: none;
            }

            .sidebar a.active {
                background-color: #19A7CE;
                color: white;
            }

            .sidebar a:hover:not(.active) {
                background-color: #FFD966;
                color: white;
            }

            div.content {
                margin-left: 200px;
                padding: 1px 16px;
                height: 900px;
            }

            @media screen and (max-width: 700px) {
                .sidebar {
                    width: 100%;
                    height: auto;
                    position: relative;
                }
                .sidebar a {
                    float: left;
                }
                div.content {
                    margin-left: 0;
                }
            }

            @media screen and (max-width: 400px) {
                .sidebar a {
                    text-align: center;
                    float: none;
                }
            }

            
        </style>

    </head>
    <body class="bg-dark">
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark admin-nav">
                <a class="navbar-brand font-weight-bold" href="index.jsp">  <span> <img src="images/logo-removebg-preview-removebg-preview.png" alt="" style="height: 35px; width: 50px;" class="img-rounded img-fluid"></span> Tech Chronicles</a>
                <center><input id="searchbr" style="height: 50px; width: 700px;" class="bg-dark text-white form-control" onkeyup="search_animals()" type="text"
                               name="search" placeholder="Search anything..."></center>
                <a href="index.jsp" class="btn bg-success text-white ml-4"><span class="fa fa-bullseye"></span> Index Page</a>
                <a class="btn bg-warning text-dark ml-4" href="#"><span class="fa fa-address-book"></span> Admin</a>
                <a class="btn bg-danger text-dark  ml-4" href="LogoutServlet"><span class="fa fa-sign-out"></span> Logout</a>

            </nav>
            <script>
                // JavaScript code
                function search_animals() {
                    let input = document.getElementById('searchbr').value
                    input = input.toLowerCase();
                    let x = document.getElementsByClassName('animal');

                    for (i = 0; i < x.length; i++) {
                        if (!x[i].innerHTML.toLowerCase().includes(input)) {
                            x[i].style.display = "none";
                        } else {
                            x[i].style.display = "list-item";
                        }
                    }
                }

            </script>

        </header>
        <main style="font-family: sans-serif;">
            <hr>
            <div class="sidebar bg-dark border border-info text-white">
                <a class="active" href="admin_page.jsp"><span class="fa fa-home"></span> Home</a>
                <a href="view_users.jsp" class="bg-secondary text-white"><span class="fa fa-user-circle-o"></span> View User</a>
                <a href="view_posts.jsp" class="bg-secondary text-white"><span class="fa fa-vcard"></span> View Post</a>
                <a href="view_likes.jsp" class="bg-secondary text-white"><span class="	fa fa-thumbs-up"></span> View Likes</a>
                <a href="view_categories.jsp" class="bg-secondary text-white"><span class="fa fa-credit-card"></span> View Categories</a>
                <a href="view_comments.jsp" class="bg-secondary text-white"><span class="fa fa-comment"></span> View Comments</a>
                <a href="SearchCategory.jsp" class="bg-secondary text-white"><span class="fa fa-credit-card"></span> Search categories</a>
                <a href="SearchUser.jsp" class="bg-secondary text-white"><span class="fa fa-user-circle-o"></span> Search User</a>
                <a href="SearchPosts.jsp" class="bg-secondary text-white"><span class="fa fa-vcard"></span> Search Post</a>
                <a class="bg-danger text-white" href="LogoutServlet"><span class="fa fa-sign-out"></span> Logout</a>
            </div>
            <div class="content">
                <h4 id="placeholder" class="text-center text-warning  mr-right font-weight-bold"></h4>
                <script>
                    setInterval(function () {
                        document.getElementById('placeholder').innerHTML = Date();
                    }, 1000);
                </script>


                <br>

                <h3 class="text-justify text-uppercase font-weight-bold  text-center text-secondary" style="font-family: "Trirong", serif;">Admin Panel</h3>
                <hr>
                <div class="row justify-content-center">

                    <div class="col-sm-5">

                        <div class="card bg-success ml-5 text-white border border-info rounded animal">
                            <div class="card-body">
                                <h5 class="card-title">Admin Page</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="admin_page.jsp" class="btn btn-light btn-block">View Admin page</a>
                            </div>
                        </div>

                    </div>
                    <div class="col-sm-5">
                        <div class="card bg-danger ml-5 text-white border border-info rounded animal">
                            <div class="card-body">
                                <h5 class="card-title">View Users</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="view_users.jsp" class="btn btn-light btn-block">View Users</a>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <br>

                <div class="row justify-content-center">
                    <div class="col-sm-5">

                        <div class="card bg-primary ml-5 text-white border border-info rounded animal">
                            <div class="card-body">
                                <h5 class="card-title">View Posts</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="view_posts.jsp" class="btn btn-light btn-block">View Posts</a>
                            </div>
                        </div>

                    </div>
                    <div class="col-sm-5">
                        <div class="card bg-secondary ml-5 text-white border border-info rounded animal">
                            <div class="card-body">
                                <h5 class="card-title">View Categories</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="view_categories.jsp" class="btn btn-light btn-block">View Categories</a>
                            </div>
                        </div>
                    </div>
                </div>

                <hr>
                <br>

                <div class="row justify-content-center">
                    <div class="col-sm-5">

                        <div class="card bg-sam ml-5 text-white border border-info rounded animal">
                            <div class="card-body">
                                <h5 class="card-title">View Comments</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="view_comments.jsp" class="btn btn-light btn-block">View Comments</a>
                            </div>
                        </div>

                    </div>
                    <div class="col-sm-5">
                        <div class="card bg-info ml-5 text-white border border-info rounded animal">
                            <div class="card-body">
                                <h5 class="card-title">Search Categories</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="SearchCategory.jsp" class="btn btn-light btn-block">Search Categories</a>
                            </div>
                        </div>
                    </div>
                </div>

                <hr>
                <br>

                <div class="row justify-content-center">
                    <div class="col-sm-5">

                        <div class="card bg-sam ml-5 text-white border bg-sh border-info rounded animal">
                            <div class="card-body">
                                <h5 class="card-title">Search User</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="SearchUser.jsp" class="btn btn-light btn-block">Search User</a>
                            </div>
                        </div>

                    </div>
                    <div class="col-sm-5">
                        <div class="card bg-tan ml-5 text-white border border-info rounded animal">
                            <div class="card-body">
                                <h5 class="card-title">Search Post</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="SearchPosts.jsp" class="btn btn-light btn-block">Search Posts</a>
                            </div>
                        </div>
                    </div>
                </div>

                <hr>
                <br>

                <div class="row justify-content-center">
                    <div class="col-sm-5">

                        <div class="card bg-shi ml-5 text-white border border-info rounded animal">
                            <div class="card-body">
                                <h5 class="card-title">View Likes</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="view_likes.jsp" class="btn btn-light btn-block">View Likes</a>
                            </div>
                        </div>

                    </div>
                    <div class="col-sm-5">
                        <div class="card bg-bha ml-5 text-white border border-info rounded animal">
                            <div class="card-body">
                                <h5 class="card-title">View Features</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="features.jsp" class="btn btn-light btn-block">View Features</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
