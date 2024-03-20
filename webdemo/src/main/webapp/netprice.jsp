<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Net Price</title>
</head>
<body>
	<%
		String sprice = request.getParameter("price");
	
		int discount = 0;
		int netprice = 0;
		
		try {
			int price = Integer.parseInt(sprice);
			
			if (price > 5000) {
				discount = price * 20 / 100;
			}
			else {
				discount = price * 10 / 100;
			}
			
			netprice = price - discount;
		
		
	%>
	<table>
		<tr>
			<td>Price : </td>
			<td><%= price %></td>
		</tr>
		<tr>
			<td>Discount : </td>
			<td><%= discount %></td>
		</tr>
		<tr>
			<td>Net Price : </td>
			<td><%= netprice %></td>
		</tr>
	</table>		
	<%
		}
		catch (Exception ex) {
			System.out.println(ex);
			out.println("<h3> Sorry!!! Invalid Input </h3>");
		}
		
	%>
	
</body>
</html>