/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/LoginServletAdmin")
public class LoginServletAdmin extends HttpServlet {
    public void doPost(HttpServletRequest rq, HttpServletResponse rs) throws ServletException, IOException{
        rs.setContentType("text/html");
        PrintWriter out = rs.getWriter();
        String admin_email = rq.getParameter("admin_email");
        String admin_pass = rq.getParameter("admin_password");
        if(admin_email.equals("com@gmail.com")&& admin_pass.equals("admin")){
            out.println("Welcome Admin");
            rs.sendRedirect("admin_page.jsp");
        }
        else{
            rs.sendRedirect("index.jsp");
        }
        
        
    }
    
    
}
