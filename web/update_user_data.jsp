<%-- 
    Document   : update_user_data
    Created on : Apr 28, 2023, 3:19:47 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
if(request.getParameter("submit")!=null)
{
String id = request.getParameter("id");
String name = request.getParameter("user_name");
String email = request.getParameter("user_email");
String password = request.getParameter("user_password");
String about = request.getParameter("about");
 Connection con;
 PreparedStatement pst;
 ResultSet rs;
 Class.forName("com.mysql.cj.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","Samagra.584");
 pst = con.prepareStatement("update user set name = ?, email = ?, password = ?, about = ? where id = ?");
 pst.setString(1, name);
 pst.setString(2, email);
 pst.setString(3, password);
 pst.setString(4, about);
 pst.setString(5, id);
 pst.executeUpdate();
 %>
 <div class="alert alert-success" role="alert">
   Successfully Updated the data !!!!!!
</div>
 <%
     }
%>





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
    </head>
    <body class="bg-dark"
        <header>
            <%@include file="admin_navbar.jsp" %>
        </header>
        <main  style="padding-bottom: 30px; margin-top: 50px;">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card bg-secondary">
                        <div class="card-header text-center primary-background text-white">
                            UPDATE USER DETAILS...
                        </div>
                        <div class="card-body">
                            <form action="#" method="post">
                                <%
           Connection con;
           PreparedStatement pst;
           ResultSet rs;
           Class.forName("com.mysql.cj.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","Samagra.584");
           String id = request.getParameter("id");
           pst = con.prepareStatement("select * from user where id = ?");
           pst.setString(1, id);
           rs = pst.executeQuery();
           while(rs.next()){
            
            
                                %>
                                <div class="form-group text-white">
                                    <label for="user_name">User Name </label>
                                    <input type="text" name="user_name" class="form-control" value="<%=rs.getString("name")%>" id="user_name" aria-describedby="emailHelp" placeholder="Enter Name">

                                </div>

                                <div class="form-group text-white">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" name="user_email" class="form-control" value="<%=rs.getString("email")%>" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                </div>


                                <div class="form-group text-white">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="user_password" value="<%=rs.getString("password")%>" class="form-control" id="mtInput" placeholder="Password">

                                    Show Password  <input type="checkbox"  onclick="myfun()">
                                </div>




                                <div class="form-group text-white">
                                    <textarea name="about" class="form-control" value="<%=rs.getString("about")%>" id="" rows="5" placeholder="Enter something about yourself"></textarea>
                                </div>

                                <% } %>


                                <button id="submit-btn" type="submit" name="submit" class="btn btn-success btn-block">Submit</button>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </main>
<script>
     function myfun() {
                                            var x = document.getElementById("mtInput");
                                            if (x.type === "password") {
                                                x.type = "text";
                                            } else {
                                                x.type = "password";
                                            }
                                        }
    </script>
                                 <script
            src="https://code.jquery.com/jquery-3.6.4.min.js"
            integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
        crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    </body>
</html>
