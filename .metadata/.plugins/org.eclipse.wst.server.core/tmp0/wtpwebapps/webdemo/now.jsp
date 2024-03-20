<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Now</title>
</head>
<body>
	<h1>
		<%= new java.util.Date().toString() %>
		<hr />
		<%
		String now = new java.util.Date().toString();
		out.println(now);
		%>
	</h1>
</body>
</html>