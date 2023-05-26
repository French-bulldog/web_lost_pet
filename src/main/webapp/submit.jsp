<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page import="java.io.*, java.sql.*, java.util.*, javax.servlet.*, javax.servlet.http.*"%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>

<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
%>
<%
    // 取得提交的表單資料    
    
String name = request.getParameter("name");
String species = request.getParameter("species");
String breed = request.getParameter("breed");
String color = request.getParameter("color");
String gender = request.getParameter("gender");
String age = request.getParameter("age");
String location = request.getParameter("location");
String contact_name = request.getParameter("contact_name");
String contact_phone = request.getParameter("contact_phone");
String description = request.getParameter("description");
String photo_url = request.getParameter("photo_url");
Date date = new Date();
SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
String created_at =  ft.format(date);
//String created_at = request.getParameter("created_at");
//-----------------------    


//-----------------------

    // 建立資料庫連線
    Connection conn = null;
    PreparedStatement pstmt = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String jdbcUrl = "jdbc:mysql://localhost:3306/animal?serverTimezone=UTC";
        String user = "root";
        String password = "已mark掉";
        conn = DriverManager.getConnection(jdbcUrl, user, password);
        
        // 將提交的表單資料存入資料庫中
        String sql = "INSERT INTO lost(name, species, breed, color, gender, age, location, contact_name, contact_phone, description, created_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, species);
        pstmt.setString(3, breed);
        pstmt.setString(4, color);
        pstmt.setString(5, gender);
        pstmt.setString(6, age);
        pstmt.setString(7, location);
        pstmt.setString(8, contact_name);
        pstmt.setString(9, contact_phone);
        pstmt.setString(10, description);
        //pstmt.setString(11, photo_url);
        pstmt.setString(12, created_at);
        pstmt.executeUpdate();
        
        // 轉址至顯示遺失資訊的頁面
        response.sendRedirect("display.jsp");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
