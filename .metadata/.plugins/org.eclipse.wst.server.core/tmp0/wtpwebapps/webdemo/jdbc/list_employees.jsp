<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="java.sql.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Employees</title>
</head>
<body>
	<h1>Employees</h1>
	<table border="1" width="25%" cellpadding="5pt">
		<tr style="background-color:blue; color:white; font-weight:bold">
			<th>Employee ID</th>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
	
	<%
	String id = request.getParameter("id");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feb26", "root", "root");

	PreparedStatement ps = con.prepareStatement("SELECT employee_id, first_name, last_name FROM employees WHERE job_id = ?");
	ps.setString(1, id);
	
	ResultSet rs = ps.executeQuery();
	
	while (rs.next()) {
	%> 
		<tr>
			<td><%= rs.getString("employee_id") %></td>
			<td><%= rs.getString("first_name") %></td>
			<td><%= rs.getString("last_name") %></td>
		</tr>
	<%
	}
	%>
	</table>
</body>
</html>