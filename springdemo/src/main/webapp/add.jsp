<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add</title>
</head>
<body>
	<h1>Add</h1>
	<form method="post">
		First
		<input type="number" name="first" value=${addModel.first} required/>
		<p></p>
		Second
		<input type="number" name="second" value=${addModel.second} required/>
		<p></p>
		<button>Add</button>
	</form>
	
	<h1>${addModel.result > 0 ? addModel.result : message}</h1>
</body>
</html>