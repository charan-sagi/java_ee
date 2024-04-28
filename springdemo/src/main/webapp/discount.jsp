<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Discount Calculation</title>
</head>
<body>
	
	<div class="container">
	<h1>Discount Calculation</h1>
	<br>
		<form method="post">
			Rate: <br />
			<input type="number" required name="rate" value=${discountModel.rate} />
			<p></p>
			Discount: <br />
			<input type="number" required name="Discount" value=${discountModel.discount} />
			<p></p>
			<button>Calculate</button>
		</form>
	</div>
	
	<p></p>
	

	<div class="container">
		<table border="2" cellpadding="5px">
			<tr>
				<td>Rate</td>
				<td>${discountModel.rate}</td>
			</tr>
			<tr>
				<td>Discount</td>
				<td>${discountModel.discount}</td>
			</tr>
			<tr>
				<td>Net Price</td>
				<td>${discountModel.netprice}</td>
			</tr>
			<tr>
				<td>Discount Amount</td>
				<td>${discountAmount}</td>
			</tr>
		</table>
	</div>
</body>
</html>