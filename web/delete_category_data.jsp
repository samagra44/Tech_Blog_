<%@page import="java.sql.*"%>

<%

String cid = request.getParameter("cid");

 Connection con;
 PreparedStatement pst;
 ResultSet rs;
 Class.forName("com.mysql.cj.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","Samagra.584");
 pst = con.prepareStatement("delete from categories where cid = ?");
 pst.setString(1, cid);
 pst.executeUpdate();
 %>
 <script>
 alert("Successfully Deleted the data")
</script>
 
