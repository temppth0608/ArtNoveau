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
		<%@ include file="header2.inc" %>
		<div data-role="content">
			<%@ include file="navbar2.inc" %>
			<div>
				<h2>디지털 전시실</h2>
				<h3>작가 인터뷰(홍승혜)</h3>
				<div style="text-align:center;">
					<iframe data-controltype="youtube" type="text/html" id="youtube2" width="288px" height="216px" src="http://www.youtube.com/embed/zWp2tZzWSSE" frameborder="0" >
        			</iframe>
        		</div><br><hr />
        		<h3>디지털 전시(김란)</h3>
        		<div style="text-align:center;">
					<iframe data-controltype="youtube" type="text/html" id="youtube2" width="288px" height="216px" src="http://www.youtube.com/embed/Z-OgRcSxxEY" frameborder="0" >
        			</iframe>
        		</div><br><hr />
        		<h3>전시회(국제아동미술전시회)</h3>
        		<div style="text-align:center;">
					<iframe data-controltype="youtube" type="text/html" id="youtube2" width="288px" height="216px" src="http://www.youtube.com/embed/uWatvBvhuIo" frameborder="0" >
        			</iframe>
        		</div>
			</div>
		</div>
	</div>
</body>
</html>