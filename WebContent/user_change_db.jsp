<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
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
	String 				  sql = "";
	%>

	<%
	//update user 
	//set pwsd="1234", birth="1991-02-02", email="ppth0608@nate.com", phone="010-1111-1111", job="gradStudent"
	//where id="ppth0608";
	//"update user set pwsd='"+pswd+"', birth='"+birth+"', email='"+email+"', phone='"+phone+"', job='"+job+"' where id='"+id+"'"
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ArtNoveau?useUnicode=true&characterEncoding=UTF-8","root","654321");
		sql = "update user set pwsd='"+pswd+"', birth='"+birth+"', email='"+email+"', phone='"+phone+"', job='"+job+"' where id='"+id+"'";
		
		pstmt	 = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		
		response.sendRedirect("login.jsp");
		
	}catch (SQLException e) {
		out.print(e);
	}
	%>

</body>
</html>