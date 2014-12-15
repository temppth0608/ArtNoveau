<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %>

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
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pswd = request.getParameter("pswd");
	String birth = request.getParameter("birth");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String job = request.getParameter("job");
	%>
	

	
	<%
	Connection 			conn  = null;
	PreparedStatement 	pstmt = null;
	ResultSet 			   rs = null;
	
	String				  sql = "";
	String 				  rst = "success";
	String				  msg = "";
	
	%>

	<%
	try {
	%>
		<% 
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ArtNoveau?useUnicode=true&characterEncoding=UTF-8","root","654321");
		%>
		<% 
		sql = "SELECT * "+
			  " from user "+
			  "where id = ? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			rst = "중복아이디";
			msg = "이미 등록된 아이디 입니다!";
		} else {
			sql = "insert into user(id,pwsd,birth,email,phone,job) "+
				  "values(?, ?, ?, ?, ?, ? );";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			pstmt.setString(2,pswd);
			pstmt.setString(3,birth);
			pstmt.setString(4,email);
			pstmt.setString(5,phone);
			pstmt.setString(6,job);
			
			pstmt.executeUpdate();
		
		%>
		

		
	<%
		}
	%>
	<%
	} catch(SQLException e) {
		rst = "시스템 에러";
		msg = e.getMessage();
		out.print("결과 : "+rst + "<br>");
		out.print("내용 : "+msg + "<br>");
	}finally {
		if(pstmt != null)
			pstmt.close();
		if(conn != null)
			conn.close();
	}
	
	
	%>
	
	
	
	
	<div data-role="header">
		<%@ include file="header.inc" %>
	</div>
	
	<div data-role="content">
		<div class="thank_message">
			<h3>감사합니다.</h3>
		</div>	
		<p align= "center">
		<a href="login.jsp" data-role="button" data-inline="true" data-ajax="false">확인</a>
		</p>
		
	</div>
	
	 
</body>
</html>