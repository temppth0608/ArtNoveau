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
		<div data-role="content">
			<%@ include file="navbar.inc" %>
			<br>
	        <ul data-role="listview" data-divider-theme="b" data-inset="true">
	            <li data-role="list-divider" role="heading">
	                디지털 전시
	            </li>
	            <li data-theme="c">
	                <a href="#null" data-transition="slide">
	                    2014.07월호
	                </a>
	            </li>
	            <li data-theme="c">
	                <a href="#null" data-transition="slide">
	                    2014.08월호
	                </a>
	            </li>
	            <li data-theme="c">
	                <a href="#null" data-transition="slide">
	                    2014.09월호
	                </a>
	            </li>
	            <li data-theme="c">
	                <a href="#null" data-transition="slide">
	                    2014.10월호
	                </a>
	            </li>
	        </ul>
		</div>
	</div>
</body>
</html>