<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="java.sql.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Job</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feb26", "root", "root");

	PreparedStatement ps = con.prepareStatement("DELETE FROM jobs WHERE job_id = ?");
	ps.setString(1, id);
	
	ps.executeUpdate();

	try {
		response.sendRedirect("list_jobs.jsp");	
	}
	catch (Exception ex) {
		out.println("Sorry! Error -> " + ex.getMessage());
	}
	finally {
		ps.close();
		con.close();	
	}
	%>
</body>
</html>