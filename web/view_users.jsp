<%-- 
    Document   : view_posts
    Created on : Apr 28, 2023, 2:29:14 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.tech.blog.entities.Post" %>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>

            th {
                background-color: #6DA9E4;
            }
         

        </style>
    </head>
    <body class="bg-dark">
        <header>
            <%@include file="admin_navbar.jsp" %>
        </header>
        <hr>
        <br>
        <h1 class="text-primary text-center text-muted">View Users</h1>
       
  

        <br>
        <div class="table-responsive animals">
            <table class="table table-striped table-dark text-white table-bordered table-hover table-sm">
                <tr>
                    <th scope="col"> id </th>
                    <th scope="col"> Name </th>
                    <th scope="col"> Email</th>
                    <th scope="col"> Password</th>
                    <th scope="col"> About</th>
                    <th scope="col"> Registered Date</th>
                    <th scope="col"> Edit</th>
                    <th scope="col"> Delete</th>

                </tr>
                <%
                Connection con;
                try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","Samagra.584");
                Statement st = con.createStatement();
                String str = "select * from user";
                ResultSet rs = st.executeQuery(str);
                while(rs.next()){
                String id = rs.getString("id");
                %>
                <tr scope="row">
                    <td scope="row"> <%=rs.getInt("id")%></td>
                    <td><%=rs.getString("name")%></td>
                    <td align="left"><%=rs.getString("email")%></td>
                    <td width="10%"><%=rs.getString("password")%></td>
                    <td><%=rs.getString("about")%></td>
                    <td><%=rs.getString("rdate")%></td>

                    <td><a class="btn btn-sm btn-success" href="update_user_data.jsp?id=<%=id%>">Edit</a></td>
                    <td><a class="btn btn-sm btn-danger" href="delete_user_data.jsp?id=<%=id%>">Delete</a></td>
                </tr>
                <% }
            
                    }catch(Exception e){
                    e.printStackTrace();
                    }
                %>
            </table>
        </div>
    </body>
</html>
