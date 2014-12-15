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
	
	<script language = "javascript">  // 자바 스크립트 시작
		function deleteCheck()
		  {
		   var form = document.deleteform;
		   
		   if( !form.password.value )
		   {
		    alert( "비밀번호를 적어주세요" );
		    form.password.focus();
		    return;
		   }
		 		form.submit();
		  } 
		</script>
</head>
<body>
		<%
		int idx = Integer.parseInt(request.getParameter("idx"));
		%>
	 	<div data-role="header">
 			<a data-role="button" data-theme="b" href="#" data-rel="back" class="ui-btn-left">
            	back
       		</a>
        	<h3>
          	삭제하기
       		</h3>
       	</div>
       	<div data-role="content">
       		<form name=deleteform method=post action="delete_db.jsp?idx=<%= idx%>">
       		<table>
  				<tr>
  					<td>
    					<table width="100%" cellpadding="0" cellspacing="0" border="0">
     					<tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">	      
					      <td>삭제</td>
     					</tr>
    					</table>
   			<table>
     			<tr>
			      <td>&nbsp;</td>
			      <td align="center">비밀번호</td>
			      <br>
			      <td><input name="password" type="password" size="50" maxlength="100"></td>
			      <td>&nbsp;</td>
     			</tr>
			     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
			     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
			     <tr align="center">
      				<td>&nbsp;</td>
      				<td colspan="2">
      				<input data-theme="e" type=button value="삭제" onClick="javascript:deleteCheck()">
       				<input data-theme="e" type=button value="취소" onClick="javascript:history.back(-1)">
      				<td>&nbsp;</td>
     			</tr>
    		</table>
   				</td>
  			</tr>
 			</table>
 			</form>
      </div>
</body>
</html>