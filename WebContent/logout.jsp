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
	<div data-role="page" data-control-title="Home" id="page1">
    	<div data-theme="a" data-role="header">
        	<a data-role="button" data-theme="b" href="#" data-rel="back" class="ui-btn-left">
            	back
        	</a>
        	<h3>
            	logout
        	</h3>
    	</div>
    	<div data-role="content">
    	<br><br><br>
	    	<form method="post" action ="logout_db.jsp">
	    		<input type="submit" data-theme="e" value="logout">
	    	</form>
	    </div>
	</div>
</body>
</html>