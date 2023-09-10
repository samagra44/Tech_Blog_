<%-- 
    Document   : contact
    Created on : Apr 15, 2023, 10:31:22 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
* {
    box-sizing: border-box;
}

body {
    background: #181823;
    color: #485e74;
    line-height: 1.6;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    padding: 1em;
}
input[type="text"],textarea{
    background-color: #000000;
}
input[type="email"]{
    background-color: #000000;
}
input[type="tel"]{
    background-color: #000000;
}


.container {
    max-width: 1170px;
    margin-left: auto;
    margin-right: auto;
    padding: 1em;
}

ul {
    list-style: none;
    padding: 0;
}

.brand {
    text-align: center;
}

.brand span {
    color: #2196f3;
}

.wrapper {
    box-shadow: 0 0 20px 0 rgba(72, 94, 116, 0.7);
}

.wrapper>* {
    padding: 1em;
}

.company-info {
    background: #B0DAFF;
}

.company-info h3,
.company-info ul {
    text-align: center;
    margin: 0 0 1rem 0;
}

.contact {
    background: #000000;
}

/* Form Styles */

.contact form {
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-gap: 20px;
}

.contact form label {
    display: block;
}

.contact form p {
    margin: 0;
}

.contact form .full {
    grid-column: 1/3;
}

.contact form button,
.contact form input,
.contact form textarea {
    width: 100%;
    padding: 1em;
    border: 1px solid #c9e6ff;
}

.contact form button {
    background: #c9e6ff;
    border: 0;
    text-transform: uppercase;
    cursor: pointer;
}

.contact form button:hover,
.contact form butto:focus {
    background: #B8621B;
    color: #B8621B;
    outline: 0;
    transition: background-color 1.5s ease-out;
}

.alert {
    text-align: center;
    padding: 10px;
    background: #B8621B;
    color: #fff;
    margin-bottom: 10px;
    display: none;
}

/* responsive css for larger screeens */

@media(min-width:700px) {
    .wrapper {
        display: grid;
        grid-template-columns: 1fr 2fr;
    }
    .wrapper>* {
        padding: 2em;
    }
    .company-info h3,
    .company-info ul,
    .brand {
     text-align: left;
    }
}
map_inner h4, .map_inner p{
    color: #B8621B;
    text-align: center;

}
.map_inner p{
    font-size: 13px;
}


            
        </style>
    </head>
    <body>
<div class="container">
    <h1 class="brand" style="color: #F7DB6A;">
            <span></span>Contact Us!</h1>
        <div class="wrapper animated bounceInLeft">
            <div class="company-info">
                <h3>Anonymous Coder</h3>
                <ul>
                    <li>
                        <i class="fa fa-road"></i>301, MIG Vijay Nagar, Dewas, Madhya Pradesh, India</li>
                    <li>
                        <i class="fa fa-phone"></i>(91)+9755775332</li>
                    <li>
                        <i class="fa fa-envelope"></i>samagra6424@gmail.com</li>
                </ul>
            </div>
            <div class="contact">
                <h3 style="color: #F7DB6A;">Email Us</h3>
                <form action="">
                    <p>
                        <label style="color: #F7DB6A;">Name</label>
                        <input type="text" placeholder="Enter your name ....."  name="name">
                    </p>
                    <p>
                        <label style="color: #F7DB6A;">Company</label>
                        <input type="text" placeholder="Enter your comapny name...."  name="company">
                    </p>
                    <p>
                        <label style="color: #F7DB6A;">Email Address</label>
                        <input type="email" placeholder="Enter your email...." name="email">
                    </p>
                    <p>
                        <label style="color: #F7DB6A;">Phone Number</label>
                        <input type="tel" placeholder="Enter your phone number...." name="phone">
                    </p>
                    <p class="full">
                        <label style="color: #F7DB6A;">Message</label>
                        <textarea name="Message" placeholder="share your thought with us.....:)" rows="5"></textarea>
                    </p>
                    <p class="full">
                        <button style="background-color: #F7DB6A;">Submit</button>
                    </p>
                </form>
                
            </div>
        </div>
    
    </div>
        <div class="map_inner">
            <center> <h4 style="font-size: 20px;">Find Us on Google Map</h4></center>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore quo beatae quasi assumenda, expedita aliquam minima tenetur maiores neque incidunt repellat aut voluptas hic dolorem sequi ab porro, quia error.</p>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3673.431270267545!2d76.04368727449267!3d22.97116341824624!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396317394e4a0941%3A0x4f5dd3efff08bfa3!2sVijay%20nagar%20dewas!5e0!3m2!1sen!2sin!4v1681536348290!5m2!1sen!2sin" width="100%" height="450" style="border:20px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </body>
</html>
