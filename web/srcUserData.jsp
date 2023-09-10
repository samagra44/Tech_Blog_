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

        <h3 class="text-center text-muted">View Searched User..</h3>
        <br>
        <table class="table table-striped table-bordered table-hover table-dark">
            <tr>
                <th class="bg-info"> id </th>
                <th class="bg-info"> Name </th>
                <th class="bg-info"> Email</th>
                <th class="bg-info"> Password</th>
                <th class="bg-info"> About</th>
                <th class="bg-info"> Gender</th>
                <th class="bg-info"> Registered Date</th>
                <th class="bg-info"> Edit</th>
                <th class="bg-info"> Delete</th>
            </tr>
            <%
                try{
                Connection con;
                 Class.forName("com.mysql.cj.jdbc.Driver");
                 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","Samagra.584");
                 Statement st = con.createStatement();
                 String user = request.getParameter("user");
                 String sqlstr = "select * from user where name = '"+user+"'";
                 ResultSet rs = st.executeQuery(sqlstr);
                 while(rs.next()){
                  String id = rs.getString("id");
            %>
            <tr>
                <td> <%=rs.getInt("id")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("password")%></td>
                <td><%=rs.getString("about")%></td>
                <td><%=rs.getString("gender")%></td>
                <td><%=rs.getString("rdate")%></td>
                <td><a class="btn btn-sm btn-success btn-block" href="update_user_data.jsp?id=<%=id%>">Edit</a></td>
                <td><a class="btn btn-sm btn-danger btn-block" href="delete_user_data.jsp?id=<%=id%>">Delete</a></td>f
            </tr>
            <% } 
    }catch(Exception e){
    e.printStackTrace();
}
            %>   
        </table>
    </body>
</html>
