<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="java.sql.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Job</title>
</head>
<body>
	<h1>Edit Job</h1>
	<%
	String id = request.getParameter("id");
	if (id == null)
		return;
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feb26", "root", "root");
	
	PreparedStatement ps = con.prepareStatement("SELECT * FROM jobs WHERE job_id = ?");
	ps.setString(1, id);
	
	ResultSet rs = ps.executeQuery();
	rs.next();
	
	String title = rs.getString("job_title");
	String min_sal = rs.getString("min_salary");
	%>
	
	<form action="edit_job.jsp">
		ID : <input type="hidden" name="id" value="<%= id %>" />
		<p></p>
		Title : <input type="text" name="title" value="<%= title %>" />
		<p></p>
		Min. Salary : <input type="number" name="min_sal" value="<%= min_sal %>"/>
		<p></p> 
		<input type="submit" value="Edit Job"/>
	</form>
	<%
	PreparedStatement ps1 = con.prepareStatement("UPDATE JOBS SET job_title = ?, min_salary = ? WHERE job_id = ?");
	ps1.setString(1, request.getParameter("title"));
	ps1.setString(2, request.getParameter("min_sal"));
	ps1.setString(3, request.getParameter("id"));
	
	try {
		ps1.executeUpdate();
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