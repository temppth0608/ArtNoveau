<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	request.setCharacterEncoding("UTF-8");
	int idx = Integer.parseInt(request.getParameter("idx"));
	String pswd = request.getParameter("password");
	String pass = "";
	String password = null;
	
	try {
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ArtNoveau?useUnicode=true&characterEncoding=UTF-8","root","654321");
		Statement stmt = conn.createStatement();
		String sql = "SELECT PASSWORD FROM board WHERE NUM=" + idx;
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			password = rs.getString(1);
		}
		
		if(password.equals(pswd)) {
			sql = "DELETE FROM board where num=" + idx;
			stmt.executeUpdate(sql);
	%>	
			<script language=javascript>
				self.window.alert("해당글을 삭제하였습니다.");
				location.href = "list2.jsp";
			</script>
	<%
		rs.close();
		stmt.close();
		conn.close();
		} else {
	%>
			<script language = javascript>
				self.window.alert("비밀번호가 틀렷습니다.");
				location.href="javascript:history.back()";
			</script>
	<%
		}
	}catch(SQLException e) {
		out.print(e.toString());
	}
	%>

</body>
</html>