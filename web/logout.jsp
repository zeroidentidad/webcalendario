<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
	session.invalidate();
	response.sendRedirect("login.jsp");
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Saliendo...</title>
</head>

<body>
</body>
</html>
