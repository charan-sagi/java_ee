<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Interest Rate</title>
</head>
<body>
	<h1>Interest Rate Calculator</h1>
	<form action="interest_rate.jsp" method="post">
		Amount : <input type="number" name="amount" value=${param.amount} required />
		<p></p>
		Interest Rate :
		<input type="number" name="minrate" value=${param.minrate} required ></input>
		TO <input type="number" name="maxrate" value=${param.maxrate} required ></input>
		<p></p>
		<button>Show</button>
	</form>
	
	<%
		String samount = request.getParameter("amount");
		if (samount == null) 
			return;
		
		int amount = Integer.parseInt(samount);
		int minrate = Integer.parseInt(request.getParameter("minrate"));
		int maxrate = Integer.parseInt(request.getParameter("maxrate"));
	%>
	<table>
		<tr>
			<th>Amount</th>
			<th>Rate</th>
			<th>Interest</th>
		</tr>
		<tr>
			<td><%= amount %></td>
			<td><%= minrate %></td>
			<td><%= maxrate %></td>
		</tr>
	</table>
</body>
</html>