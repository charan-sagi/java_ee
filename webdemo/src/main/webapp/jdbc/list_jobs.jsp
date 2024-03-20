<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="java.sql.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Jobs</title>
</head>
<body>
	<%
	//Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/feb26", "root", "root");
	
	PreparedStatement ps = con.prepareStatement("SELECT job_id, job_title, min_salary FROM jobs");
	ResultSet rs = ps.executeQuery();
	%>
	
	<h1>List of Jobs</h1>
	<a href="add_job.jsp">Add New Job</a>
	<p></p>
	<table border="1" width="100%" cellpadding="5pt">
		<tr style="background-color:blue; color:white; font-weight:bold"> 
			<th>Job Title</th>
			<th>Min Salary</th>
			<th></th>
		</tr>
	
		<%
		while (rs.next()) {
			String id = rs.getString("job_id");
		%>
		
		<tr>
			<td><%= rs.getString("job_title") %></td>
			<td style="text-align:right"><%= rs.getInt("min_salary") %></td>
			<td style="text-align:center">
				<a href="edit_job.jsp?id=<%= id %>">Edit</a>
				&nbsp;
				<a href="delete_job.jsp?id=<%= id %>">Delete</a>
				&nbsp;
				<a href="list_employees.jsp?id=<%= id %>">List Employees</a>
			</td>
		</tr>
	
		<% 
		}
		con.close();
		%>
	</table>
</body>
</html>