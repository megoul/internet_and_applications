<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Basket</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel=StyleSheet href="site.css" type="text/css"/>
<script src="site.js" type="text/javascript"></script>
</head>
<body>
<% String username=(String)session.getAttribute("username");
String finalprice=(String)session.getAttribute("finalprice");%>
<h2><%=username%> the products you chose</h2>



<form action="servlet1" method="POST">
<h3>Final  price <%=finalprice%> with tax __:</h3>


	Voucher code:
	<input type="text" name="code" size=20 />
</form>

	<div class="dropdown">
  <button onclick="myBasket()" class="dropbtn">Country</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="#greece">Greece(25%)</a>
    <a href="#italy">Italy(12%)</a>
    <a href="#spain">Spain(10%)</a>
    <a href="#uk">UK(20%)</a>
    <a href="#germany">Germany(40%)</a>
  </div>
</div>
</body>
</html>