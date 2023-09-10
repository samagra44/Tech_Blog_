<%-- 
    Document   : SearchPosts
    Created on : Apr 29, 2023, 3:54:09 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Trirong">
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
        <br>
        <br>
        <h3 class="text-center text-muted">Search Categories...</h3>
        <br>
        <div class="container">
            <div class="col-md-6 offset-md-3">
                <div class="card bg-secondary">
                    <div class="card-header text-center primary-background text-white">
                        ENTER CATEGORY NAME...
                    </div>
                    <div class="card-body">
                        <form action="srcCategoryData.jsp">
                            <input type="text" style="width: 480px; height: 40px;" placeholder="Enter category name..." class="rounded" name="cat"/>
                            <br>
                            <br>
                            <input type="submit" class="btn btn-block btn-success"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>


    </body>
</html>
