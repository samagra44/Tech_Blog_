<%@page import="java.sql.*"%>

<%

String pid = request.getParameter("pid");

 Connection con;
 PreparedStatement pst;
 ResultSet rs;
 Class.forName("com.mysql.cj.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","Samagra.584");
 pst = con.prepareStatement("delete from posts where pid = ?");
 pst.setString(1, pid);
 pst.executeUpdate();
 %>
  <script>
 alert("Successfully Deleted the data")
</script>