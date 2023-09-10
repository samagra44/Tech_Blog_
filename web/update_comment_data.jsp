<%-- 
    Document   : update_comment_data
    Created on : Apr 28, 2023, 6:49:12 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
if(request.getParameter("submit")!=null)
{
String id = request.getParameter("id");
String com_name = request.getParameter("comment_name");
String com_em = request.getParameter("comment_email");
Connection con;
 PreparedStatement pst;
 ResultSet rs;
 Class.forName("com.mysql.cj.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","Samagra.584");
 pst = con.prepareStatement("update comment set comment1 = ?, email = ? where id = ?");
 pst.setString(1, com_name);
 pst.setString(2, com_em);
 pst.setString(3, id);
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
    <body class="bg-dark">
        <header>
            <%@include file="admin_navbar.jsp" %>
        </header>
        <div class="container">
            <div class="row mt-5 align-items-center" style="height: 75vh;">
                <div class="mx-auto col-10 col-md-8 col-lg-6">
                    <div class="card bg-secondary">
                        <h4 class="text-center text-white bg-primary">UPDATE COMMENT DETAILS....</h4>

                        <div class="card-body">
                            <hr>
                            <form method="post" action="#">
                                <%
                             Connection con;
                             PreparedStatement pst;
                             ResultSet rs;
                             Class.forName("com.mysql.cj.jdbc.Driver");
                             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","Samagra.584");
                             String id = request.getParameter("id");
                             pst = con.prepareStatement("select * from comment where id = ?");
                             pst.setString(1, id);
                             rs = pst.executeQuery();
                             while(rs.next()){
            
            
                                %>
                                <div class="form-group text-white">
                                    <label for="exampleInputEmail1">Update Comment</label>
                                    <input type="text" name="comment_name" class="form-control" placeholder="Update comment..">
                                </div>
                                <div class="form-group text-white">
                                    <label for="exampleInputPassword1">Update Email</label>
                                    <input type="email" name="comment_email"  class="form-control"  placeholder="Update Email..">
                                </div>
                                <% } %>
                                <button type="submit" name="submit" class="btn btn-success btn-block">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    </body>
</html>
