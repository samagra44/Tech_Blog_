/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.dao;

import com.tech.blog.entities.Category;
import com.tech.blog.entities.Post;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class PostDao {
    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }
    public ArrayList<Category> getAllCategories(){
        ArrayList<Category> list = new ArrayList<>();
        try{
            String q = "select * from categories";
            Statement st = con.createStatement();
            ResultSet set = st.executeQuery(q);
            while(set.next())
            {
                int cid = set.getInt("cid");
                String name = set.getString("name");
                String description = set.getString("description");
                Category c = new Category(cid,name,description);
                list.add(c);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return list;
    }
    public boolean savePost(Post p){
        boolean f = false;
        try{
            String q = "insert into  posts(pTitle,pContent,pCode,pPic,catId,userId) values(?,?,?,?,?,?)";
            PreparedStatement s = con.prepareStatement(q);
            s.setString(1, p.getpTitle());
            s.setString(2, p.getpContent());
            s.setString(3, p.getpCode());
            s.setString(4,p.getpPic());
            s.setInt(5, p.getCatId());
            s.setInt(6, p.getUserId());
            s.executeUpdate();
            f=true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    //get all the posts
    public List<Post> getAllPosts(){
        List<Post> list = new ArrayList<>();
        try{
            PreparedStatement p = con.prepareStatement("select * from posts order by pid desc");
            ResultSet set = p.executeQuery();
            while(set.next())
            {
              
                
               int pid = set.getInt("pid");
                String pTitle = set.getString("pTitle");
                String pContent = set.getString("pContent");
                String pCode = set.getString("pCode");
                String pPic = set.getString("pPic");
                Timestamp date = set.getTimestamp("pDate");
                int catId = set.getInt("catId");
                int userId = set.getInt("userId");
                Post post = new Post(pid, pTitle, pContent, pCode, pPic, date, catId, userId);
                list.add(post);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    public List<Post> getPostByCatId(int catId){
        List<Post> list = new ArrayList<>();
        try{
            PreparedStatement p = con.prepareStatement("select * from posts where catId=?");
            p.setInt(1, catId);
            ResultSet set = p.executeQuery();
            while(set.next())
            {
              
                
               int pid = set.getInt("pid");
                String pTitle = set.getString("pTitle");
                String pContent = set.getString("pContent");
                String pCode = set.getString("pCode");
                String pPic = set.getString("pPic");
                Timestamp date = set.getTimestamp("pDate");
                int userId = set.getInt("userId");
                Post post = new Post(pid, pTitle, pContent, pCode, pPic, date, catId, userId);
                list.add(post);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    public Post getPostByPostId(int postId){
        Post post = null;
        String q = "select * from posts where pid=?";
        try{
        PreparedStatement p = this.con.prepareStatement(q);
        p.setInt(1, postId);
        ResultSet set = p.executeQuery();
        if(set.next()){
            int pid = set.getInt("pid");
                String pTitle = set.getString("pTitle");
                String pContent = set.getString("pContent");
                String pCode = set.getString("pCode");
                String pPic = set.getString("pPic");
                Timestamp date = set.getTimestamp("pDate");
                int cid = set.getInt("catId");
                int userId = set.getInt("userId");
                post = new Post(pid, pTitle, pContent, pCode, pPic, date, cid, userId);
       
            
            
        }
        }catch(Exception e){
            e.printStackTrace();
        }
        return post;
    }
}
