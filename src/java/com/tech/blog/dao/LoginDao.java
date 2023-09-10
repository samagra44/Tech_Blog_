/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.tech.blog.dao;

import java.sql.*;
public class LoginDao{
    public static boolean validate(String email){
        boolean status = false;
        
        try{
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","Samagra.584");
             PreparedStatement ps = con.prepareStatement("select * from user where email = ?");
             ps.setString(1,email);
             ResultSet rs = ps.executeQuery();
             status = rs.next();
        }catch(Exception e){
            e.printStackTrace();
        }
        return status;
    }
}

