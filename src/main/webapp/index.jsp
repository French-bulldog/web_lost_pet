<!-- 
本專題是寵物走失網站 使用到html.css.javascript.jsp.mysql
設計幫遺失寵物的主人上架相關寵物訊息，讓大眾幫忙尋找。
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首頁</title>
<link rel="stylesheet" type="text/css" href="css/2.css">
<style>
        html {
            height: 100%;
        }

        body {
            background-image: url(image/P.3.gif);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            background-size: cover;
        }
</style>
</head>
<body>
	<h1>寵物走失首頁</h1>
	
	<!--
	<p>
		<a href="submit_first.jsp">提交遺失走失訊息</a>
	</p>
	<p>
		<a href="display.jsp">查看遺失寵物訊息</a>
	</p>
	-->

    <div class="dropdown">
      <button class="dropdown-button">下拉式選單</button>
      <div class="dropdown-content">
        <a href="submit_first.jsp">提交遺失走失訊息</a>
        <a href="display.jsp">查看遺失寵物訊息</a>
      </div>
    </div>

</body>
</html>