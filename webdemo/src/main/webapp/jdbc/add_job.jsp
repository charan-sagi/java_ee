<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="java.sql.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Job</title>
</head>
<body>
	<h1>Add Job</h1>
	<a href="list_jobs.jsp">List Jobs</a>
	<p></p>
	<form action="add_job.jsp">
		ID : <input type="text" name="id" value="${param.id}" required/>
		<p></p>
		Title : <input type="text" name="job_title" value="${param.job_title}" required/>
		<p></p>
		Min. Salary : <input type="number" name="min_salary" value="${param.min_salary}" required/>
		<p></p>
		<input type="submit" value="Add Job"/>
	</form>
	<%	
	String id = request.getParameter("id");
	if (id == null)
		return;
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feb26", "root", "root");

	PreparedStatement ps = con.prepareStatement("INSERT INTO jobs(job_id, job_title, min_salary) VALUE(?, ?, ?)");
	ps.setString(1, id);
	ps.setString(2, request.getParameter("job_title"));
	ps.setString(3, request.getParameter("min_salary"));
	
	try {
		ps.executeUpdate();
		out.println("Added Successfully!");;
	}
	catch (Exception ex) {
		out.println("Sorry! Error -> "+ ex.getMessage());
	}
	
	ps.close();
	con.close();
	%>
</body>
</html>