<%-- 
    Document   : profile
    Created on : Apr 8, 2023, 6:13:41 PM
    Author     : Asus
--%>
<%@page import="com.tech.blog.entities.User" %>
<%@page import="com.tech.blog.entities.Message" %>
<%@page import="com.tech.blog.dao.PostDao" %>
<%@page import="com.tech.blog.helper.ConnectionProvider" %>
<%@page import="com.tech.blog.entities.Category" %>
<%@page import="java.util.ArrayList" %>
<%@page errorPage="error_page.jsp" %>
<%
User user =(User)session.getAttribute("currentUser");
if(user == null)
{
response.sendRedirect("login_page.jsp");
}

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css" rel="stylesheet" />

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            *{
                font-family: 'Poppins', sans-serif;
                margin: 0;
                padding: 0;
                scroll-behavior: smooth;
                scroll-padding-top: 2rem;
                box-sizing: border-box;
            }
            html {
                scroll-behavior: smooth;
            }
            body{
                background-color: #181823;
                font-family: 'Poppins', sans-serif;
            }
            .icon-bar {
                position: fixed;
                top: 60%;
                -webkit-transform: translateY(-50%);
                -ms-transform: translateY(-50%);
                transform: translateY(-50%);
            }

            .icon-bar a {
                display: block;
                text-align: center;
                padding: 16px;
                transition: all 0.3s ease;
                color: white;
                font-size: 20px;
            }

            .icon-bar a:hover {
                background-color: #000;
            }

            .facebook {
                background: #3B5998;
                color: white;
            }

            .twitter {
                background: #55ACEE;
                color: white;
            }

            .google {
                background: #dd4b39;
                color: white;
            }

            .linkedin {
                background: #007bb5;
                color: white;
            }

            .youtube {
                background: #bb0000;
                color: white;
            }
            mark{
                display: inline-block;
                height: 1.15em;
                line-height: 1.15;
            }
            .samagra{
                animation:1.5s linear infinite;

                font-family: serif;
            }
            @keyframes blinker {
                50% {
                    opacity: 0;
                }
            }

            .patil {
                width: 350px;
                height: auto;

                /*   margin: 20vh auto; */
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                border-radius: 4rem;
                padding: 10px;
            }

            /*.search__box {
              float: left;
              width: 0;
              height: 4rem;
               display: inline; 
              background: none;
              color: #f7f7f7;
              font-size: 1.5rem;
              border-radius: 2rem;
              outline: none;
              border: none;
              position: relative;
              opacity: 1;
              transition: all .75s ease-in;
              cursor: pointer;*/
            /*   border: 2px solid tomato; */
            /*   margin-top: 5px; */


            /* .search__box:focus, .search__box:hover {
              background-color: #f1f2f6;
            } */

            /*.search__icon {
              box-sizing: border-box;
              float: right;
              font-size: 2.5rem;
              display: inline-block;
               justify-content: center;
              align-items: center; 
              margin-left: .8rem;
              margin-top: 0;
              cursor: pointer;
              position: absolute;
              color: #fa983a;
              transition: all .25s ease-in;
              padding: .7rem;
              border-radius: 50%;
            }*/

            /*.container:hover > .search__box {
              width: 85%;
              padding: 0 1rem;
            }
            
            .container:hover > .search__icon {
              background-color: #eee;
            }*/

            /*.show {
              width: 85%;
              border: 1px solid red;
            }*/



        </style>
    </head>
    <body>


        <nav class="navbar navbar-expand-lg navbar-dark bg-dark font-weight-bold" style="font-family: 'Poppins', sans-serif;">
            <a class="navbar-brand" style="font-family: sans-serif;" href="index.jsp"> <span><img src="images/logo-removebg-preview-removebg-preview.png" alt="" style="height: 40px; width: 80px;" class="img-fluid"></span>Tech Chronicles</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="about.jsp"><span class="fa fa-home"></span> About Us <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="modal" data-target="#contact-detail"><span class="fa fa-phone"></span> Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="modal" data-target="#add-post-modal"><span class="fa fa-plus-circle"></span> Add a post</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle"  href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-navicon">
                            </span>
                            Categories
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" onclick="getPosts(0, this)" href="#">All Post</a>
                            <%
                                            PostDao dd = new PostDao(ConnectionProvider.getConnection());
                                            ArrayList<Category> list2 = dd.getAllCategories();
                                            for(Category ss:list2)
                                            {
                            %>
                            <a class="dropdown-item" onclick="getPosts(<%=ss.getCid()%>, this)" href="#"><%=ss.getName()%></a>

                            <%
                            }
                            %>




                        </div>
                    </li>


                </ul>
                <div class="dropdown">
                    <a class="btn btn-dark text-white dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img src="pics/<%=user.getProfile()%>" class="img-fluid" style="height: 29px; width: 45px; border-radius: 25px;"> <%=user.getName()%>
                    </a>
                    <div class="dropdown-menu bg-dark" aria-labelledby="dropdownMenuButton">
                        <!--                 <ul class="navbar-nav mr-right">-->
                        <li class="nav-item dropdown-item bg-success">
                            <a class="nav-link text-white" href="#!" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-address-card"></span> View Profile</a>
                        </li>

                        <li class="nav-item  dropdown-item bg-info">
                            <a class="nav-link text-white" href="#" data-toggle="modal" data-target="#add-post-modal"><span class="fa fa-plus-circle"></span> Add a post</a>
                        </li>

                        <li class="nav-item dropdown-item bg-danger">
                            <a class="nav-link text-white" href="LogoutServlet"><span class="fa fa-sign-out"></span> Logout</a>
                        </li>
                        <!--                                </ul>-->


                    </div>
                </div>
                <!--                <ul class="navbar-nav mr-right">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"><img src="pics/<%=user.getProfile()%>" class="img-fluid" style="height: 29px; width: 45px; border-radius: 25px;"> <%=user.getName()%></a>
                                    </li>
                
                                    <li class="nav-item">
                                        <a class="nav-link" href="LogoutServlet"><span class="fa fa-sign-out"></span> Logout</a>
                                    </li>
                                </ul>-->
            </div>
        </nav>

        <%
              Message m = (Message)session.getAttribute("msg");
              if(m!=null)
              {
        %>
        <div class="alert alert-danger" role="alert">
            <%= m.getContent()%>
        </div>

        <%
            session.removeAttribute("msg");
      }
                           
                               
        %>


        <h4 id="placeholder" class="text-center text-warning  mr-right font-weight-bold"></h4>

        <script>
            setInterval(function () {
                document.getElementById('placeholder').innerHTML = Date();
            }, 1000);


        </script>




    <marquee class="text-white h4 samagra" style="font-family: sans-serif;" scrollamount="20">Starting a blog is a great way to give your brand personality. For instance if you are offering chic serviced apartments in a cool city centre, reflect that in your blog. Write about the local neighbourhood, the trendy bars, restaurants and street art which are all on your doorstep. Include great images which reflect your brand and your brand position.</marquee>
    <div class="icon-bar">
        <a href="#" class="facebook"><i class="fa fa-facebook"></i></a> 
        <a href="#" class="twitter"><i class="fa fa-twitter"></i></a> 
        <a href="#" class="google"><i class="fa fa-google"></i></a> 
        <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
        <a href="#" class="youtube"><i class="fa fa-youtube"></i></a> 
    </div>
    <br>
    <br>
    <center><input id="searchbar" style="height: 50px; width: 700px;" class="bg-dark text-white form-control" onkeyup="search_animal()" type="text"
                   name="search" placeholder="Search anything..."></center>



    <script>
        // JavaScript code
        function search_animal() {
            let input = document.getElementById('searchbar').value
            input = input.toLowerCase();
            let x = document.getElementsByClassName('animals');

            for (i = 0; i < x.length; i++) {
                if (!x[i].innerHTML.toLowerCase().includes(input)) {
                    x[i].style.display = "none";
                } else {
                    x[i].style.display = "list-item";
                }
            }
        }

    </script>
    <main>

        <div class="container border-info">
            <div class="row mt-5 border-info">
                <div class="col-md-4 border-info">
                    <div class="list-group border-info">
                        <a href="#" onclick="getPosts(0, this)" class="c-link list-group-item list-group-item-dark active">
                            All posts
                        </a>

                        <%
                        PostDao d = new PostDao(ConnectionProvider.getConnection());
                        ArrayList<Category> list1 = d.getAllCategories();
                        for(Category cc:list1)
                        {
                        %>
                        <a href="#" onclick="getPosts(<%=cc.getCid()%>, this)" class="c-link list-group-item list-group-item-action"><%=cc.getName()%></a>

                        <%
                        }
                        %>

                    </div>
                </div>

                <div class="col-md-8">
                    <div class="container text-center text-white" id="loader">
                        <i class="fa fa-refresh fa-4x fa-spin"></i>
                        <h3 class="mt-2">Loading...</h3>
                    </div>

                    <div class="container-fluid" id="post-container">

                    </div>

                </div>

            </div>
        </div>

    </main>

    <!-- Modal -->
    <div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header primary-background text-white text-center">
                    <h5 class="modal-title" id="exampleModalLongTitle">TechBlog</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container text-center">
                        <img src="pics/<%=user.getProfile()%>" class="img-fluid" style="border-radius: 50%; max-width: 150px;">
                        <br>
                        <h5 class="modal-title mt-3" id="exampleModalLongTitle"><%=user.getName()%></h5>
                        <div  id="profile-details">
                            <table class="table table-striped table-primary">

                                <tbody>
                                    <tr>
                                        <th scope="row">ID: </th>
                                        <td><%=user.getId()%></td>

                                    </tr>
                                    <tr>
                                        <th scope="row">Email: </th>
                                        <td><%=user.getEmail()%></td>

                                    </tr>
                                    <tr>
                                        <th scope="row">Gender: </th>
                                        <td><%=user.getGender()%></td>

                                    </tr>
                                    <tr>
                                        <th scope="row">About: </th>
                                        <td><%=user.getAbout()%></td>

                                    </tr>
                                    <tr>
                                        <th scope="row">Registered On: </th>
                                        <td><%=user.getDateTime().toString()%></td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!--                                        profile edit-->
                        <div id="profile-edit" style="display: none;">
                            <h3 class="mt-2">Please Edit</h3>
                            <form action="EditServlet" method="post" enctype="multipart/form-data">
                                <table class="table">
                                    <tr>
                                        <td>ID : </td>
                                        <td><%=user.getId()%></td>
                                    </tr>
                                    <tr>
                                        <td>Email : </td>
                                        <td><input type="email" class="form-control" name="user_email" value="<%=user.getEmail()%>"></td>
                                    </tr>
                                    <tr>
                                        <td>Name : </td>
                                        <td><input type="text" class="form-control" name="user_name" value="<%=user.getName()%>"></td>
                                    </tr>
                                    <tr>
                                        <td>Password : </td>
                                        <td><input type="password" class="form-control" name="user_password" value="<%=user.getPassword()%>"></td>
                                    </tr>
                                    <tr>
                                        <td>Gender : </td>
                                        <td><%=user.getGender().toUpperCase()%></td>
                                    </tr>
                                    <tr>
                                        <td>About : </td>
                                        <td>
                                            <textarea class="form-control" name="user_about" row="3"> <%=user.getAbout()%></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>New Profile Picture : </td>
                                        <td>
                                            <input type="file" name="image" class="form-control"/>
                                        </td>
                                    </tr>

                                </table>
                                <div class="container">
                                    <button type="submit" class="btn btn-outline-primary btn-block">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button id="edit-profile-button" type="button" class="btn btn-primary">Edit</button>
                </div>
            </div>
        </div>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="add-post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Post Details...</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="add-post-form" action="AddPostServlet" method="post">
                        <div class="form-group">
                            <select class="form-control" name="cid">
                                <option selected disabled>---Select Category---</option>
                                <%
                                PostDao postd = new PostDao(ConnectionProvider.getConnection());
                                ArrayList<Category> list = postd.getAllCategories();
                                for(Category c:list)
                                {
                                %>
                                <option value="<%=c.getCid()%>"><%=c.getName()%></option>
                                <%
                                    }
                                %>
                            </select>
                        </div>
                        <div class="form-group">
                            <input name="pTitle" type="text" placeholder="Enter the post headline....." class="form-control"/>
                        </div>
                        <div class="form-group">
                            <textarea name="pContent" class="form-control" placeholder="Enter your content here........" style="height: 200px;"></textarea>
                        </div>
                        <div class="form-group">
                            <textarea name="pCode" placeholder="Enter code (if any)........." class="form-control" style="height: 200px;"></textarea>
                        </div>
                        <div class="form-group">
                            <label>Select Your Picture</label>
                            <br>
                            <input name="pic" type="file"/>
                        </div>
                        <div class="container text-center">
                            <button type="submit" class="btn btn-outline-primary btn-lg btn-block">Post</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>



    <!-- Modal -->
    <div class="modal fade" id="contact-detail" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>



                </div>
                <div class="modal-body">
                    <h4 class="text-center">Heyyyy!!!! Lets Connect <span class="fa fa-handshake-o"></span></h4>




                </div>
                <div class="modal-footer">
                    <a href="contact.jsp" class="btn bg-primary btn-sm text-white text-center"> Let's Connect</a>
                    <a class="btn bg-primary btn-sm text-white text-center" data-dismiss="modal">Close</a>
                </div>
            </div>
        </div>
    </div>



    <script
        src="https://code.jquery.com/jquery-3.6.4.min.js"
        integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
    crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="js/myjs.js" type="text/javascript"></script>
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <script>
                            $(document).ready(function () {
                                let editStatus = false;
                                $('#edit-profile-button').click(function () {
                                    if (editStatus == false)
                                    {
                                        $("#profile-details").hide()
                                        $("#profile-edit").show();
                                        editStatus = true;
                                        $(this).text("Back")
                                    } else {
                                        $("#profile-details").show()
                                        $("#profile-edit").hide();
                                        editStatus = false;
                                        $(this).text("Edit")
                                    }

                                });
                            });
    </script>
    <script>
        $(document).ready(function (e) {
            $("#add-post-form").on("submit", function (event) {
                //this is called when form is submitted
                event.preventDefault();
                console.log("Doneeee")
                let form = new FormData(this);
                $.ajax({
                    url: "AddPostServlet",
                    type: "POST",
                    data: form,
                    success: function (data, textStatus, jqXHR) {
                        //success
                        console.log(data);
                        if (data.trim() == 'done') {
                            swal("Good job!", "Saved", "success");
                        } else {
                            swal("Error!", "Something went wrong!", "error");
                        }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        swal("Error!", "Something went wrong!", "error");
                    },
                    processData: false,
                    contentType: false
                })
            })
        })
    </script>

    <script>
        function getPosts(catId, temp) {
            $("#loader").show();
            $("post-container").hide()
            $(".c-link").removeClass('active')
            $.ajax({
                url: "load_posts.jsp",
                data: {cid: catId},
                success: function (data, textStatus, jqXHR) {
                    console.log(data);
                    $("#loader").hide();
                    $('#post-container').show();
                    $('#post-container').html(data)
                    $(temp).addClass('active')
                }
            })
        }
        $(document).ready(function (e) {
            let allPostRef = $('.c-link')[0]
            getPosts(0, allPostRef)

        })
    </script>
    <script>
        AOS.init({
            offset: 120,
            duration: 900
        });
    </script>
</body>
</html>
