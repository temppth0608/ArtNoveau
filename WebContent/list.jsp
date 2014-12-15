<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
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

 <%
 	Class.forName("com.mysql.jdbc.Driver");
 	int total = 0;
 	try {
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ArtNoveau?useUnicode=true&characterEncoding=UTF-8","root","654321");
		Statement stmt = conn.createStatement();
		
		String sqlCount = "SELECT COUNT(*) FROM board";
		ResultSet rs = stmt.executeQuery(sqlCount);
		
		if(rs.next()) {
			total = rs.getInt(1);
		}
		rs.close();
		String sqlList = "SELECT num, username, title, time, hit from board order by num desc";
		rs = stmt.executeQuery(sqlList);
 	
 %>
 	<div data-role="header">
 		<a data-role="button" data-theme="b" href="#" data-rel="back" class="ui-btn-left">
            back
        </a>
        <h3>
          	게시판
       	</h3>
     
 	</div>
 	<div data-role="content">
 	<%
 	out.print("총 게시물 : "+ total + "개");
 	%>
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
		  <tr height="5"><td width="5"></td></tr>
		 <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
		   <td width="50">No.</td>
		   <td width="379">제목</td>
		   <td width="73">ID</td>
		   <td width="164">작성일</td>
		   <td width="50">hit</td>
		  </tr>
		  
		  <%
		  if(total == 0) {
		  %>
		  	<tr align = "center" bgcolor="#FFFFF" height="30">
		  		<td colspan="6">등록된 글이 없습니다.</td>
		  	</tr>
		  <%
		  } else {
			  while(rs.next()) {
				  int idx = rs.getInt(1);
				  String name = rs.getString(2);
				  String title = rs.getString(3);
				  String time = rs.getString(4);
				  int hit = rs.getInt(5);
		  %>
		  <tr height="25" align="center">
			<td><%=idx %></td>
			<td align="center"><a href="view.jsp?idx=<%=idx%>"><%=title %></a></td>
			<td align="center"><%=name %></td>
			<td align="center"><%=time %></td>
			<td align="center"><%=hit %></td>
		</tr>
  			<tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
  		<%
			  }
		  }
		  rs.close();
		  stmt.close();
		  conn.close();
 	}catch(SQLException e) {
 		out.println(e.toString());
 	}
  		%>
		  
		<tr height="25" align="center">
		</tr>
		  <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
		
		 <tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
		 </table>
		 
		<table width="100%" cellpadding="0" cellspacing="0" border="0">
		  <tr><td colspan="4" height="5"></td></tr>
		  <tr align="center">
		   <td><input data-theme="e" type=button value="글쓰기" onClick="window.location='write.jsp'"></td>
		   <td><input data-theme="e" type=button value="홈으로" onClick="window.location='main_page2.jsp'"></td>
		  </tr>
		</table>
	</div>
</body> 
</html>