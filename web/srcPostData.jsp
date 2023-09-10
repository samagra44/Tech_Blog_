<%-- 
    Document   : searchUserData
    Created on : Apr 29, 2023, 1:09:26 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
        <hr>
        <br>
        <br>
  
        <h3 class="text-center text-muted">View Searched Post..</h3>
        <br>
        <table class="table table-striped table-bordered table-hover table-dark">
            <tr>
                <th class="bg-info"> id </th>
                <th class="bg-info"> Title </th>
                <th class="bg-info"> Content</th>
                <th class="bg-info"> Code</th>
                <th class="bg-info"> Pic</th>
                <th class="bg-info"> Edit</th>
                <th class="bg-info"> Delete</th>
               
            </tr>
            <%
                try{
                Connection con;
                 Class.forName("com.mysql.cj.jdbc.Driver");
                 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","Samagra.584");
                 Statement st = con.createStatement();
                 String post = request.getParameter("post");
                 String sql = "select * from posts where pTitle = '"+post+"'";
                 ResultSet rs = st.executeQuery(sql);
                 while(rs.next()){
                  String pid = rs.getString("pid");
            %>
            <tr>
                <td> <%=rs.getInt("pid")%></td>
                <td><%=rs.getString("pTitle")%></td>
                <td><%=rs.getString("pContent")%></td>
                <td><%=rs.getString("pCode")%></td>
                <td><%=rs.getString("pPic")%></td>
                <td><a class="btn btn-sm btn-success" href="update_data.jsp?pid=<%=pid%>">Edit</a></td>
                <td><a class="btn btn-sm btn-danger" href="delete_data.jsp?pid=<%=pid%>">Delete</a></td>
            </tr>
            <% } 
    }catch(Exception e){
    e.printStackTrace();
}
            %>   
        </table>
    </body>
</html>
