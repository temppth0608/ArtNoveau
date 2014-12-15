<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	request.setCharacterEncoding("UTF-8");
	Class.forName("com.mysql.jdbc.Driver");
	
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String title = request.getParameter("title");
	String memo = request.getParameter("memo");
	
	try {
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ArtNoveau?useUnicode=true&characterEncoding=UTF-8","root","654321");
	
		String sql = "INSERT INTO board(username,password,title,memo) VALUES(?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, password);
		pstmt.setString(3, title);
		pstmt.setString(4, memo);
		
		pstmt.execute();
		pstmt.close();
		conn.close();
		
	} catch(SQLException e) {
		out.println(e.toString());
	}
	%>
	<script language=javascript>
   self.window.alert("입력한 글을 저장하였습니다.");
   location.href="list2.jsp"; 
   </script>
</body>
</html>