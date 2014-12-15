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
	
	<script language = "javascript"> // 자바 스크립트 시작


		function writeCheck()
		  {
		   var form = document.writeform;
		   
		   if( !form.name.value )   // form 에 있는 name 값이 없을 때
		   {
		    alert( "이름을 적어주세요" ); // 경고창 띄움
		    form.name.focus();   // form 에 있는 name 위치로 이동
		    return;
		   }
		   
		   if( !form.password.value )
		   {
		    alert( "비밀번호를 적어주세요" );
		    form.password.focus();
		    return;
		   }
		   
		  if( !form.title.value )
		   {
		    alert( "제목을 적어주세요" );
		    form.title.focus();
		    return;
		   }
		 
		  if( !form.memo.value )
		   {
		    alert( "내용을 적어주세요" );
		    form.memo.focus();
		    return;
		   }
		 
		  form.submit();
		  }
 </script>
	
</head>
<body>
	<div data-role="page" data-control-title="index" id = "page1">
		<div data-theme="a" data-role="header">
			<a data-role="button" data-theme="b" href="#" data-rel="back" class="ui-btn-left">
				back
			</a>
			<h3>
				게시물 작성
			</h3>
		</div>
		
		<div data-role="content">
			<form name=writeform method=post action="write_db.jsp">
		        <div data-role="fieldcontain" data-controltype="textinput">
		            <label for="title">
		                분야
		            </label>
		            <input name="title" id="title" placeholder="" value="" type="text">
		        </div>
		        <div data-role="fieldcontain" data-controltype="textinput">
		            <label for="name">
		                이름
		            </label>
		            <input name="name" id="name" placeholder="" value="" type="text">
		        </div>
		        <div data-role="fieldcontain" data-controltype="textinput">
		            <label for="password">
		                비밀번호
		            </label>
		            <input name="password" id="password" placeholder="" value="" type="text">
		        </div>
		        <div>
		        </div>
		        <div data-role="fieldcontain" data-controltype="textarea">
		            <label for="memo">
		                내용
		            </label>
		            <textarea  name="memo" id="memo" placeholder=""></textarea>
		        </div>
		         <input type="submit" data-theme="e" value="등록" onclick="javascript:writeCheck();">
		      </form>
	    </div>
	</div>
</body>
</html>