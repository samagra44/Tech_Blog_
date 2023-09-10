<%@page import="java.sql.*"%>

<%

String id = request.getParameter("id");

 Connection con;
 PreparedStatement pst;
 ResultSet rs;
 Class.forName("com.mysql.cj.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","Samagra.584");
 pst = con.prepareStatement("delete from comment where id = ?");
 pst.setString(1, id);
 pst.executeUpdate();
 %>
  <script>
 alert("Successfully Deleted the data")
</script>
 
