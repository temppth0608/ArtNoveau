<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8" name="viewport" content="device-width, initial-scale=1">
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>
	<link rel="stylesheet" href="style.css" />
	<title>Art_Noveau</title></head>
<body>


<%
	Class.forName("com.mysql.jdbc.Driver");
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	try {
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ArtNoveau?useUnicode=true&characterEncoding=UTF-8","root","654321");
		Statement stmt = conn.createStatement();
		String sql = "SELECT username, title, memo, time, hit FROM board WHERE num=" + idx;
		ResultSet rs = stmt.executeQuery(sql);
		if(rs.next()) {
			String name = rs.getString(1);
			String title = rs.getString(2);
			String memo = rs.getString(3);
			String time = rs.getString(4);
			int hit = rs.getInt(5);
			hit++;
%>


	<div data-role="page" data-control-title="index" id = "page1">
		<div data-theme="a" data-role="header">
			<a data-role="button" data-theme="b" href="#" data-rel="back" class="ui-btn-left">
				back
			</a>
			<h3>
				세부 내용
			</h3>
		</div>
		<table>
		 <tr>
		  <td>
		  <table width="100%" cellpadding="0" cellspacing="0" border="0">
		  	     <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
  	     	     </tr>
  	     	     </table>
  	     	     <table width="325">
  	     	     <tr>
	      			<td width="0">&nbsp;</td>
	      			<td align="center" width="76">글번호</td>
				    <td width="319"><%= idx %></td>
				    <td width="0">&nbsp;</td>
	     		</tr>
		 		<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
	    		<tr>
			      <td width="0">&nbsp;</td>
			      <td align="center" width="76">조회수</td>
			      <td width="319"><%= hit %></td>
			      <td width="0">&nbsp;</td>
	     		</tr>
		 		<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
	    		<tr>
			      <td width="0">&nbsp;</td>
			      <td align="center" width="76">이름</td>
			      <td width="319"><%= name %></td>
			      <td width="0">&nbsp;</td>
	     		</tr>
	    		<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
	   			<tr>
			      <td width="0">&nbsp;</td>
			      <td align="center" width="76">작성일</td>
			      <td width="319"><%= time %></td>
			      <td width="0">&nbsp;</td>
	     		</tr>
	      		<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
	    		<tr>
			      <td width="0">&nbsp;</td>
			      <td align="center" width="76">제목</td>
			      <td width="319"><%= title %></td>
			      <td width="0">&nbsp;</td>
	     		</tr>
	     		<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
	            <tr>
	            	<td width="0">&nbsp;</td>
	                <td  colspan="2" height="100"><%=memo %>
	           </tr>
	           
	           <%
	           sql = "UPDATE board SET HIT=" +hit+" where num=" +idx;
	           stmt.execute(sql);
	           rs.close();
	           stmt.close();
	           conn.close();
		}
	}catch(SQLException e) {
		out.print(e.toString());
	}
	           %>
	           
	           <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
	     	   <tr height="1" bgcolor="#82B5DF"><td colspan="4" width="407"></td></tr>
	    	</table>
	    	</td>
	   	</tr>
 </table>		
 	<input type="button" data-theme="e" value="목록" OnClick="window.location='list2.jsp'">
 	<input type=button data-theme="e" value="삭제" OnClick="window.location='delete.jsp?idx=<%=idx%>'">
</div>
</body>
</html>