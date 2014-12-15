<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 				이달의 작가 신청
 			</h3>
 		</div>
 		
 		<div data-role="content">
 		<%
 			out.print("총 게시물 : "+ total + "개");
 		%>
 		</div>
		<div>
		<%
		  if(total == 0) {
		 %>
		 <div align = "center" bgcolor="#FFFFF" height="30">
		  		<div colspan="6">등록된 글이 없습니다.</div>
		 </div>
		<%
		  }else {
			  while(rs.next()) {
				  int idx = rs.getInt(1);
				  String name = rs.getString(2);
				  String title = rs.getString(3);
				  String time = rs.getString(4);
				  int hit = rs.getInt(5);
		%>
		<ul data-role="listview" data-divider-theme="b" data-inset="true">
     
            <li data-theme="d">
                <a href="view.jsp?idx=<%=idx %>" data-transition="slide">

                    <div class="list_value">
                    	<h4>
                    	<%=title %>
                    	</h4>
                    	<h5>
                    	<%=name %>/  <%=time %>
                    	</h5>
                    </div>
                </a>
            </li>
        </ul>
		
		
		
		<%
			  }
		  }
		rs.close();
		stmt.close();
		conn.close();
 	}
 	catch(SQLException e) {
 		out.println(e.toString());
 	}
		%>
		<div width="100%" cellpadding="0" cellspacing="0" border="0">
			<div><div colspan="4" height="5"></div></div>	  <div align="center">
		    <div><input data-theme="e" type=button value="글쓰기" onClick="window.location='write.jsp'"></div>
		    <div><input data-theme="e" type=button value="홈으로" onClick="window.location='main_page2.jsp'"></div>
		</div>
	</div>
		
	</div>
</body>
</html>