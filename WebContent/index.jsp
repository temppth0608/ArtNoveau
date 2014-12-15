<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8" name="viewport" content="device-width, initial-scale=1">
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>
	<link rel="stylesheet" href="style.css" />
	<title>Art_Noveau</title>
</head>
<body>         
	<div data-role="page" data-control-title="index" id="page1">
		<%@ include file="header.inc" %>
    <div class="main_image" data-role="content">
    	<a href ="main_page.jsp">
    		<img src="image/main_image.PNG" width=280px height=400px />
    	</a>
    </div>
</div>
</body>
</html>