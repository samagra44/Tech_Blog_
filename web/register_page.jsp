

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            body{
                background-image: url("car_img/joanna-kosinska-1_CMoFsPfso-unsplash (1).jpg");
            }
        </style>
    </head>
    <body>
        <header data-aos="slide-right">
            <%@include file="navbar.jsp" %>
        </header>
        <br>
        <br>
        <main class="" style="padding-bottom: 60px;">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header text-center primary-background text-white"><span class="fa fa-user-plus"></span><br>
                            Register Here
                        </div>
                        <div class="card-body">
                            <form action="RegisterServlet" method="post" id="reg-form">
                                <div class="form-group">
                                    <label for="user_name">User Name </label>
                                    <input type="text" name="user_name" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter Name">

                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>


                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="user_password" class="form-control" id="mtInput" placeholder="Password">

                                    Show Password <span class="fa fa-eye"></span> <input type="checkbox"  onclick="myfun()">
                                </div>


                                <div class="form-group">
                                    <label for="gender"> Select Gender</label>
                                    <br>
                                    <input type="radio" id="gender" name="gender" value="male"> Male
                                    <input type="radio" id="gender" name="gender" value="female"> Female
                                </div>

                                <div class="form-group">
                                    <textarea name="about" class="form-control" id="" rows="5" placeholder="Enter something about yourself"></textarea>
                                </div>
                                <div class="form-check"> <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1"> <label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label> </div>
                                <div class="form-group">
                                    <a href="login_page.jsp" class="text-sm">Already a user ? Login here</a>
                                </div>

                                <div class="container text-center" id="loader" style="display: none">
                                    <span class="fa fa-refresh fa-spin fa-4x"></span>
                                    <h4>Please wait</h4>
                                </div>

                                <button id="submit-btn" type="submit" class="btn btn-primary btn-block">Submit</button>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </main>

        <script
            src="https://code.jquery.com/jquery-3.6.4.min.js"
            integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!--        <script src="js/myjs.js" type="text/javascript"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

        <script>
                                        function myfun() {
                                            var x = document.getElementById("mtInput");
                                            if (x.type === "password") {
                                                x.type = "text";
                                            } else {
                                                x.type = "password";
                                            }
                                        }
//            $(document).ready(function () {
//                console.log("Loaded")
//                $('#reg-form').on('submit', function (event) {
//                    event.preventDefault();
//                    let form = new FormData(this);
//                    $("submit-btn").hide();
//                    $("loader").show();
//                    $.ajax({
//                        url: "RegisterServlet",
//                        type: 'POST',
//                        data: form,
//                        success: function (data, textStatus, jqXHR) {
//                            console.log(data)
//                            $("submit-btn").show();
//                            $("loader").hide();
//                            if (data.trim() === 'done') {
//                            swal("Registered Sucessfully....Wait for a while we are redirecting you to Login page.")
//                                    .then((value) => {
//                                        window.location="login_page.jsp"
//                                    });
//                               
//                            } else {
//                                swal(data);
//                            }
//                        },
//                        error: function (jqXHR, textStatus, errorThrown) {
//                            $("submit-btn").show();
//                            $("loader").hide();
//                            swal("Something went wrong");
//                        },
//                        processData: false,
//                        contentType: false
//                    });
//                });
//
//            });
                                        $(document).ready(function () {
                                            console.log("loaded........")
                                            $('#reg-form').on('submit', function (event) {
                                                event.preventDefault();
                                                let form = new FormData(this);
                                                $("#sumbimt-btn").hide();
                                                $("#loader").show();
                                                //send register servlet:
                                                $.ajax({
                                                    url: "RegisterServlet",
                                                    type: 'POST',
                                                    data: form,
                                                    success: function (data, textStatus, jqXHR) {
                                                        console.log(data)
                                                        $("#submit-btn").show();
                                                        $("#loader").hide();
                                                        if (data.trim() === 'done')
                                                        {
                                                            swal("Registered successfully..We are going to redirect to login page")
                                                                    .then((value) => {
                                                                        window.location = "login_page.jsp"
                                                                    });
                                                        } else
                                                        {
                                                            swal(data);
                                                        }
                                                    },
                                                    error: function (jqXHR, textStatus, errorThrown) {
                                                        $("#submit-btn").show();
                                                        $("#loader").hide();
                                                        swal("something went wrong..try again");
                                                    },
                                                    processData: false,
                                                    contentType: false
                                                });
                                            });
                                        });

        </script>
    </body>
</html>
