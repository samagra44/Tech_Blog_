<%@page import="java.sql.*"%>

<%

String lid = request.getParameter("lid");

 Connection con;
 PreparedStatement pst;
 ResultSet rs;
 Class.forName("com.mysql.cj.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","Samagra.584");
 pst = con.prepareStatement("delete from liked where lid = ?");
 pst.setString(1, lid);
 pst.executeUpdate();
 %>
 <script>
 alert("Successfully Deleted the data")
</script>
 
