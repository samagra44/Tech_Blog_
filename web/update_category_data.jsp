<%-- 
    Document   : update_category_data
    Created on : Apr 28, 2023, 6:23:44 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
if(request.getParameter("submit")!=null)
{
String cid = request.getParameter("cid");
String name = request.getParameter("cat_name");
String description = request.getParameter("cat_description");
Connection con;
 PreparedStatement pst;
 ResultSet rs;
 Class.forName("com.mysql.cj.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","Samagra.584");
 pst = con.prepareStatement("update categories set name = ?, description = ? where cid = ?");
 pst.setString(1, name);
 pst.setString(2, description);
 pst.setString(3, cid);
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
                    <h4 class="text-center text-white bg-primary">UPDATE CATEGORY DETAILS....</h4>
                   
                    <div class="card-body">
                          <hr>
                        <form method="post" action="#" class="form-example">
                            <%
                         Connection con;
                         PreparedStatement pst;
                         ResultSet rs;
                         Class.forName("com.mysql.cj.jdbc.Driver");
                         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","Samagra.584");
                         String cid = request.getParameter("cid");
                         pst = con.prepareStatement("select * from categories where cid = ?");
                         pst.setString(1, cid);
                         rs = pst.executeQuery();
                         while(rs.next()){
            
            
                            %>
                            <div class="form-group text-white">
                                <label for="exampleInputEmail1">Category Name</label>
                                <input type="text" name="cat_name" class="form-control" placeholder="Enter category name">
                            </div>
                            <div class="form-group text-white">
                                <label for="exampleInputPassword1">Description</label>
                                <input type="text" name="cat_description"  class="form-control"  placeholder="Enter category description">
                            </div>
                            <% } %>
                            <center><button type="submit" name="submit" class="btn btn-success text-center btn-block">Submit</button></center>
                            
                        </form>
                    </div>
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
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    </body>
</html>
