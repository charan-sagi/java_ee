<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Interest Calculation</title>
</head>
<body>
	<h1>Interest Calculation</h1>
	<form method="post">
		Amount <br /> 
		<input type="number" required name="amount" value=${interest.amount}/>
		<p></p>
		Rate <br /> 
		<input type="number" required name="rate" value=${interest.rate}/>
		<p></p>
		<button>Calculate</button>
	</form>
	
	<h1>${intModel.interest}</h1>

</body>
</html>