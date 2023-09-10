<%@page import="com.tech.blog.entities.Post" %>
<%@page import="java.util.List" %>
<%@page import="com.tech.blog.helper.ConnectionProvider" %>
<%@page import="com.tech.blog.dao.PostDao" %>
<%@page import="com.tech.blog.dao.likeDao" %>
<%@page import="com.tech.blog.entities.User" %>
<head>
   <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
 
</head>
<div class="row">
<%
User uuu = (User)session.getAttribute("currentUser");
PostDao d = new PostDao(ConnectionProvider.getConnection());
int cid = Integer.parseInt(request.getParameter("cid"));
List<Post> posts = null;
if(cid==0){
 posts = d.getAllPosts();
  }else{
  posts = d.getPostByCatId(cid);
    }
    if(posts.size()==0){
    out.println("<h3 class='display-3 text-center'>No Posts Avalabale</h3>");
    return;
    }
    
for(Post p:posts)
{
%>


<div class="col-md-6 mt-3 border-info animate__fadeInUpBig animals">
    <div class="card bg-dark border-info fade-in-up animate__fadeInUpBig">
        <img class="card-img-top animate__fadeInUpBig" src="blog_pics/<%=p.getpPic()%>" alt="Card image cap">
        <div class="card-body bg-dark text-white animate__fadeInUpBig" id="list">
            <p style="color: #E11299;"><b>Article</b></p>
            <b class="text-warning"><%=p.getpTitle()%></b>
            <%
                                         if(p.getpContent().length() > 0 && p.getpContent().length() < 70){
                                         %>
                                         <p><%=p.getpContent()%></p>
                                         <%
                                     }else{
%>
<p ><%=p.getpContent().substring(0,70)%>.....</p>
<%
}
%>





 


            

        </div>
        

        <div class="card-footer text-center bg-dark">
            <%
            likeDao ld = new likeDao(ConnectionProvider.getConnection());
            %>
            <a href="show_blog_page.jsp?post_id=<%=p.getPid()%>" class="btn bg-primary btn-sm text-white">Read more...</a>
           
            <a href="#!"  onclick="doLike(<%=p.getPid()%>,<%=uuu.getId()%>)" class="btn btn-outline-success btn-sm text-white"><i class="fa fa-heart"></i> Likes <span class="like-counter"><%=ld.countLikeOnPost(p.getPid())%></span></a>
            <a href="#!"  class="btn btn-outline-warning btn-sm text-white text-center"><i class="fa fa-mail-forward"></i> Share <span class="like-counter"><%=ld.countLikeOnPost(p.getPid())%></span></a>
           
            
        </div>
    </div>
</div>

<%
}


%>
</div>