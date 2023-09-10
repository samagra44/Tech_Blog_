<%-- 
    Document   : show_blog_page
    Created on : Apr 11, 2023, 10:25:33 AM
    Author     : Asus
--%>
<%@page import="com.tech.blog.entities.User" %>
<%@page errorPage="error_page.jsp" %>
<%@page import="com.tech.blog.helper.ConnectionProvider" %>
<%@page import="com.tech.blog.dao.PostDao" %>
<%@page import="com.tech.blog.entities.Post" %>
<%@page import="com.tech.blog.entities.Category" %>
<%@page import="com.tech.blog.entities.Message" %>
<%@page import="com.tech.blog.dao.UserDao" %>
<%@page import="com.tech.blog.dao.likeDao" %>
<%@page import="java.util.ArrayList" %>
<%@page import=" java.text.DateFormat"%>
<%
User user =(User)session.getAttribute("currentUser");
if(user == null)
{
response.sendRedirect("login_page.jsp");
}

%>
<%
int postId = Integer.parseInt(request.getParameter("post_id"));
PostDao d = new PostDao(ConnectionProvider.getConnection());
Post p = d.getPostByPostId(postId);

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=p.getpTitle()%></title>
       
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 68% 84%, 31% 96%, 0 85%, 0 0);
            }
            .post-title{
                font-weight: 100;
                font-size: 40px;
            }
            .post-content{
                font-weight: 100;
                font-size: 30px;
            }
            .post-date{

                font-weight: bold;
            }
            .post-user-info{
                font-size: 20px;

            }
            .row-user{
                border: 1px solid #e2e2e2;
                padding-top: 15px;

            }
            body{
                background-color: #181823;
                background-attachment: fixed;

            }


        </style>
        <!--        <div id="fb-root"></div>-->
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v16.0" nonce="ENpVQNtf"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark font-weight-bold" style="font-family: 'Poppins', sans-serif;">
            <a class="navbar-brand" style="font-family: sans-serif;" href="index.jsp"> <span><img src="images/logo-removebg-preview-removebg-preview.png" alt="" style="height: 40px; width: 80px;" class="img-fluid"></span>Tech Chronicles</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                   
                    <li class="nav-item">
                        <a class="nav-link" href="contact.jsp"><span class="fa fa-phone"></span> Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="modal" data-target="#add-post-modal"><span class="fa fa-plus-circle"></span> Add a post</a>
                    </li>

                    <!--                    <li class="nav-item">
                                            <a class="nav-link" href="register_page.jsp"><span class="fa fa-user-plus"></span> Logout</a>
                                        </li>-->
                   

                </ul>
                <ul class="navbar-nav mr-right">
                    <li class="nav-item">
                        <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"><img src="pics/<%=user.getProfile()%>" class="img-fluid" style="height: 29px; width: 45px; border-radius: 25px;"> </span> <%=user.getName()%></a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="LogoutServlet"><span class="fa fa-sign-out"></span> Logout</a>
                    </li>
                </ul>
            </div>
        </nav>


        <!--        <div class="container-fluid">-->
        <div class="row">
            <!--                <div class="col-md-8 offset-md-2">-->
            <div class="card bg-dark">
                <!--                <div class="card-header
                                     text-white" style="background-color: #62CDFF;">
                                    <b><h4 class="post-title"><%=p.getpTitle()%></h4></b>
                                </div>-->
                <div class="card-body">
                    <center> <img class="card-img-top img-fluid img-rounded img-thumbnail border-info"style="height: 400px; width: 200vh;" src="blog_pics/<%=p.getpPic()%>" alt="Card image cap"></center>

                     <div class="card-header
                         text-white">
                         <u> <center><b><h4 class="post-title" style="font-size: 60px; font-family: Bahnschrift SemiBold"><%=p.getpTitle()%></h4></b></center></u>
                    </div>
                    <div class="row my-3">
                        <div class="col-md-8">
                            <%
                            UserDao ud = new UserDao(ConnectionProvider.getConnection());
                            %>
                            <hr class="text-white">
                            <p class="post-user-info text-white"><i class="fa-solid fa-circle-user"></i><a href="#"> <%=ud.getUserByUserId(p.getUserId()).getName()%></a> has posted: </p>
                        </div>
                        <div class="col-md-4">
                            <hr>
                        <p class="post-date text-white">Posted On : <%=DateFormat.getDateTimeInstance().format(p.getpDate())%></p>
                        </div>
                    </div>



                    <p class="post-content text-white" style="font-size: 25px;"><%=p.getpContent()%></p>
                    <br>
                    <br>
                    <div class="post-code">
                        <pre class="text-white"><%=p.getpCode()%></pre>
                    </div>
                </div>
                <div class="card-footer bg-dark">
                    <%
                    likeDao ld = new likeDao(ConnectionProvider.getConnection());
                    %>

                    <a href="#!" onclick="doLike(<%=p.getPid()%>,<%=user.getId()%>)" class="btn bg-primary text-white btn-sm"><i class="fa fa-thumbs-o-up"></i> Likes <span class="like-counter"> <%=ld.countLikeOnPost(p.getPid())%></span></a>
                    <a href="#!" class="btn bg-primary text-white btn-sm"><i class="fa fa-commenting-o"></i> Comments <span> 20</span></a>
                    <a href="#!"  class="btn btn-outline-warning btn-sm text-white text-center" data-toggle="modal" data-target="#share-btn"><i class="fa fa-mail-forward"></i> Share <span class="like-counter"><%=ld.countLikeOnPost(p.getPid())%></span></a>


                </div>

            </div>
        </div>
            <!--                </div>-->
        
        <!--        </div>-->
        <div class="card bg-dark" style="width: 85rem;">     
            <div class="card-body">
<form name="commentform">  
   
    <p class="text-white h4"><img src="pics/<%=user.getProfile()%>" class="img-fluid" style="border-radius: 50px; max-width: 150px; margin-right: 15px;">Add a comment..
    </p>
  <br>
 
  <textarea name="comment" wrap="physical" class="bg-dark text-white" style="width:90vh;height:150px" required placeholder="What is your view ?......."></textarea> 
<br/>  
<input class="bg-dark text-white" type="text" name="email" placeholder="Enter your email..." required/>
<input  type="button" class="btn btn-success ml-5" value="Post Comment" onclick="postComment()">  
</form>  
  
<span id="mylocation"></span>  
            </div>
        </div>    
<script>  
var request;  
function postComment(){  
var comment=document.commentform.comment.value;  
var email=document.commentform.email.value;  
  
var url="comment.jsp?comment="+comment+"&email="+email;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=function(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('mylocation').innerHTML=val;  
}  
}//end of function  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
</script>  


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
                                <input name="pTitle" type="text" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <textarea name="pContent" class="form-control" style="height: 200px;"></textarea>
                            </div>
                            <div class="form-group">
                                <textarea name="pCode" placeholder="Enter any code" class="form-control" style="height: 200px;"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Select Your Picture</label>
                                <br>
                                <input name="pic" type="file"/>
                            </div>
                            <div class="container text-center">
                                <button type="submit" class="btn btn-outline-primary">Post</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="share-btn" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle"><span class="fa fa-share-alt"></span> Share this post...</h5>

                    </div>
                    <div class="modal-body">
                        <a href="#" class="fa fa-facebook" style="padding-left: 25px;"></a>
                        <a href="#" class="fa fa-twitter" style="padding-left: 25px;"></a>
                        <a href="#" class="fa fa-google" style="padding-left: 25px;"></a>
                        <a href="#" class="fa fa-linkedin" style="padding-left: 25px;"></a>
                        <a href="#" class="fa fa-youtube" style="padding-left: 25px;"></a>
                        <a href="#" class="fa fa-instagram" style="padding-left: 25px;"></a>
                        <a href="#" class="fa fa-pinterest" style="padding-left: 25px;"></a>
                        <a href="#" class="fa fa-snapchat-ghost" style="padding-left: 25px;"></a>
                        <a href="#" class="fa fa-skype" style="padding-left: 25px;"></a>
                        <a href="#" class="fa fa-android" style="padding-left: 25px;"></a>

                    </div>
                    <div class="modal-footer">

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
        
    </body>
</html>
