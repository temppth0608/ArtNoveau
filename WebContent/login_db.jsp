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
	<div data-role="header">
		<%@ include file="header.inc" %>
	</div>
	<div data-role="content">
	<%
		String id = request.getParameter("id");
		String pswd = request.getParameter("pswd");
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ArtNoveau?useUnicode=true&characterEncoding=UTF-8","root","654321");
		Statement st = conn.createStatement();
		ResultSet rs;
		rs = st.executeQuery("select * from user where id='"+id+"' and pwsd='"+pswd+"'");
		if(rs.next()) {
			session.setAttribute("id", id);
			response.sendRedirect("main_page2.jsp");
		}else {
			out.println("비밀번호가 아이디와 일치하지 않습니다.<br> <a href='login.jsp'> <h2> try again<h2></a>");
		}
	%>
	</div>
	
</body>
</html>