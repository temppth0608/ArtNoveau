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
            	Login
        	</h3>
    	</div>
    	
	    <div data-role="content">
	    	<form method="post" action ="login_db.jsp">
		        <div data-role="fieldcontain" data-controltype="textinput">
		            <label for="id">
		                ID
		            </label>
		            <input name="id" id="id" placeholder="" value="" type="text">
		        </div>
		        
		        <div data-role="fieldcontain" data-controltype="textinput">
		            <label for="pswd">
		                password
		            </label>
		            <input name="pswd" id="pswd" placeholder="" value="" type="password">
		        </div>
		        
		        <hr style="height:3px; background-color:#ccc; border:0; margin-top:12px; margin-bottom:12px;">
		        
	
		        <input type="submit" data-theme="e" value="login">
				
		        <a data-role="button"  href="sign_up.jsp">
		            sign up
		        </a>
	        </form>
	    </div>
	</div>
</body>
</html>