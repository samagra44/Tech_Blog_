<%-- 
    Document   : view_comments
    Created on : Apr 28, 2023, 6:45:41 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
        <h1 class="text-primary text-center text-muted">View Likes</h1>
        <br>
        <div class="table-responsive">
            <table class="table table-striped table-dark text-white table-bordered table-hover table-sm">
                <tr>
                    <th scope="col"> Lid </th>
                    <th scope="col"> pid </th>
                    <th scope="col"> uid</th>
                    <th scope="col"> Delete</th>


                </tr>
                <%
                Connection con;
                try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","Samagra.584");
                Statement st = con.createStatement();
                String str = "select * from liked";
                ResultSet rs = st.executeQuery(str);
                while(rs.next()){
                String lid = rs.getString("lid");
                %>
                <tr scope="row">
                    <td> <%=rs.getInt("lid")%></td>
                    <td><%=rs.getInt("pid")%></td>
                    <td><%=rs.getInt("uid")%></td>
                    <td><a class="btn btn-sm btn-danger btn-block" href="delete_like_data.jsp?lid=<%=lid%>">Delete</a></td>
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
