<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BMI</title>
</head>
<body>
	<h1>BMI Calculator</h1>
	<form action="bmi.jsp">
		Height : <input type="number" step="0.01" name="height" value=${param.height} required /> (in meters)
		<p></p>
		Weight : <input type="number" name="weight" value=${param.weight} required /> (in kg's)
		<p></p>
		<input type="submit" value="Calculate" />	
		<input type="reset" value="Clear" />		
	</form>
	
	<%
	String sheight = request.getParameter("height");
	
	if (sheight == null) 
		return;
	
	Double height = Double.parseDouble(sheight);
	Double weight = Double.parseDouble(request.getParameter("weight"));
	
	double bmi = weight / (height * height);
	
	String category = null;
	
	if (bmi < 18.5) 
		category = "Under Weight";
	else if (bmi < 25) 
		category = "Normal";
	else if (bmi < 30)
		category = "Over Weight";
	else 
		category = "obese";
	
	
	out.println("<h2>BMI : " + bmi + "</h2>");
	out.println("<h2>Category : " + category + "</h2>");
	%>
	
</body>
</html>