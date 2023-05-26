<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>遺失寵物資訊</title>
<style>
        html {
            height: 100%;
        }

        body {
            background-image: url(image/下載.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            background-size: cover;
        }
    </style>
</head>
<body>


<h2>遺失寵物資訊</h2>
<table border="1">
  <tr>
    <th>寵物名稱</th>
    <th>種類</th>
    <th>品種</th>
    <th>顏色</th>
    <th>性別</th>
    <th>年紀</th>
    <th>遺失地點</th>
    <th>失主姓名</th>
    <th>失主電話</th>
    <th>失蹤情形</th>
    <!-- <th>照片</th> -->
    <th>創建時間</th>
  </tr>
  <% 
    try {
        // 1. 載入 JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        // 2. 建立資料庫連線
        String url = "jdbc:mysql://localhost:3306/animal?serverTimezone=UTC";
        String user = "root";
        String password = "已Mark掉";
        Connection conn = DriverManager.getConnection(url, user, password);
        
        // 3. 建立 SQL 指令
        String sql = "SELECT * FROM lost";
        Statement stmt = conn.createStatement();
        
        // 4. 執行 SQL 指令，取得資料
        ResultSet rs = stmt.executeQuery(sql);
        
        // 5. 處理資料並輸出到網頁上
        while(rs.next()) {
            String name = rs.getString("name");
            String species = rs.getString("species");
            String breed = rs.getString("breed");
            String color = rs.getString("color");
            String gender = rs.getString("gender");
            String age = rs.getString("age");
            String location = rs.getString("location");
            String contact_name = rs.getString("contact_name");
            String contact_phone = rs.getString("contact_phone");
            String description = rs.getString("description");
            //String photo_url = rs.getString("photo_url");
            String created_at = rs.getString("created_at");
            
            out.println("<tr>");
            out.println("<td>" + name + "</td>");
            out.println("<td>" + species + "</td>");
            out.println("<td>" + breed + "</td>");
            out.println("<td>" + color + "</td>");
            out.println("<td>" + gender + "</td>");
            out.println("<td>" + age + "</td>");
            out.println("<td>" + location + "</td>");
            out.println("<td>" + contact_name + "</td>");
            out.println("<td>" + contact_phone + "</td>");
            out.println("<td>" + description + "</td>");          
            //out.println("<td>" + photo_url + "</td>");
            out.println("<td>" + created_at + "</td>");
            out.println("</tr>");
        }
        
        
        // 6. 關閉連線
        rs.close();
        stmt.close();
        conn.close();
    } catch (SQLException e) {
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
  %>

</table>
<br>
<input type="button" value="回首頁"   style="width:120px;height:40px;font-size:20px" onclick="location.href='index.jsp'">
</body>
</html>
