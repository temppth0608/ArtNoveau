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
	            회원 정보 수정
	        </h3>
	    </div>
	    
	    <div data-role="content">
		    <form method="post" action="user_change_db.jsp" >
			    <fieldset>
			   	  <legend>정보 수정</legend> <br>
			        <div data-role="fieldcontain" data-controltype="textinput">
			            <label for="id">
			                기존 ID(수정불가);
			            </label>
			            <input name="id" id="id"   type="text" required="required">
			        </div>
			        <div data-role="fieldcontain" data-controltype="textinput">
			            <label for="pswd">
			                 변경하려는 비밀번호
			            </label>
			            <input name="pswd" id="pswd"  type="password" required="required">
			        </div>
			        <div data-role="fieldcontain" data-controltype="textinput">
			            <label for="birth">
			                변경하려는 생년월일
			            </label>
			            <input name="birth" id="birth" value="예)1991-06-08"   type="date" required="required">
			        </div>
			        <div data-role="fieldcontain" data-controltype="textinput">
			            <label for="email">
			                변경하려는 이메일 주소
			            </label>
			            <input name="email" id="email"  type="text" required="required">
			        </div>
			        <div data-role="fieldcontain" data-controltype="textinput">
			            <label for="phone">
			                변경하려는 휴대폰 번호
			            </label>
			            <input name="phone" id="phone"  type="text" required="required">
			        </div>
			         
			        <div data-role="fieldcontain" data-controltype="selectmenu">
			            <label for="job">
			               병경하려는 직업
			            </label>
			            <select id="job" name="job">
			                <option value="student">
			                    대학생
			                </option>
			                <option value="gradStudent">
			                    대학원생
			                </option>
			                <option value="worker">
			                    직장인
			                </option>
			            </select>
			        </div>
			      	<div>
			        	<p align="center">
							<input type="submit" data-theme="e" value="수정"> </p>
					</div>
			        </fieldset>
		        </form>
	    </div>
	</div>

</body>
</html>