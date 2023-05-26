<%@page language="java" contentType="text/html; charset=UTF-8"
	import="java.net.*" 
	pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>寵物遺失提交訊息</title>
<script type="text/javascript" src="javascript/1.js"></script>
<style>
        html {
            height: 100%;
        }

        body {
            background-image: url(image/window.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            background-size: cover;
        }
    </style>
</head>
<body>
	
	<div style="margin: auto; text-align: center;">
	<h1>寵物遺失提交訊息</h1>
	</div>	
		
<!--			
<form action="submit.jsp" method="post"  enctype="multipart/form-data">
 -->
 <form name="myForm" action="submit.jsp" method="post" onsubmit="return CheckForm()">
<font>寵物名稱 <input type = "text" name = "name"></font> <br>
<font>種類 <input type = "text" name = "species"></font> <br>
<font>品種 <input type = "text" name = "breed"></font> <br>
<font>顏色 <input type = "text" name = "color"></font> <br>
<font>性別
<input  type="radio" name="gender" value="公">公
<input  type="radio" name="gender" value="母">母
</font> <br>
<font>年紀 <input type = "text" name = "age"></font> <br>
<font>遺失地點 <input type = "text" name = "location"></font> <br>
<font>失主姓名 <input type = "text" name = "contact_name"></font> <br>
<font>失主電話 <input type = "text" name = "contact_phone"></font> <br>
<font>失蹤情形 <input type = "text" name = "description"></font> <br>
<!-- <font>照片 <input type = "text" name = "photo_url"></font> <br> -->

<!--  
<font>創建時間 <input type = "datetime" name = "created_at"></font> <br>
 -->
 
<!--
<font>創建時間 <input type="datetime-local" name="created_at" value="2023-03-15-12:00"></font> <br>
-->


	<input type = "submit" name = "submit" value = "提交">
	</form>
	<a href="index.jsp"><button>返回</button></a>
	

<!-- http://localhost:8080/web_lost_pet/index.jsp -->

</body>
</html>