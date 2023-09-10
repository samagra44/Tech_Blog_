<!DOCTYPE html>  
<html>  
<head> 
    
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
        </style>
</head>  
<body>  
  
<%@ page import="java.sql.*" %>  
<%  
String comment=request.getParameter("comment");  
String email=request.getParameter("email");  
if(comment==null||email==null||comment.trim().equals("")||email.trim().equals("")){  
out.print("<p>Please write comment</p>");  
}else{  
  
try{  
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","Samagra.584");  
PreparedStatement ps=con.prepareStatement("insert into comment(comment1,email) values(?,?)");  
ps.setString(1,comment);  
ps.setString(2,email);  
int i=ps.executeUpdate();  
  
PreparedStatement ps2=con.prepareStatement("select * from comment order by id desc");  
ResultSet rs=ps2.executeQuery();  
  
out.print("<hr/><h2 class='text-white' style='font-family: sans-serif;'>Comments:</h2>");  
while(rs.next()){  
out.print("<div class='card bg-dark text-white'>");  
out.print("<div class='card-body text-white'>");  
out.print("<p>"+rs.getString(2)+"</p>");  
out.print("<p><strong>By: "+rs.getString(3)+"</strong></p>");  
out.print("</div>");  
}  
  
con.close();  
}catch(Exception e){out.print(e);}  
  
}//end of else  
%>  
</body>  
</html>  
