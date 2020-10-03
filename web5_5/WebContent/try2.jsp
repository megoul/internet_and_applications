<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel=StyleSheet href="site.css" type="text/css"/>
<script src="site.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body>

		<%
		Integer finalprice= (Integer) session.getAttribute("finalprice");
		Integer pricefree= (Integer) session.getAttribute("pricefree");
		if (request.getParameter("country") == null) 
		{
			
	%>
		Final price is:<%=finalprice %> 
		Pricefree is:<%=pricefree %>
		<form method="post" action="try2.jsp">	
		<div class="dropdown">
			  <button onclick="myBasket()" class="dropbtn">Country</button>
			 <div id="myDropdown" class="dropdown-content">
    <a href="greece" name="country">Greece(25%)</a>
    <a href="italy" name="country">Italy(12%)</</a>
    <a href="uk" name="country">UK(20%)</a>
    <a href="germany" name="country">Germany(40%)</a>
  </div>
  </div>
		  	<input type="submit" value="Submit">
		  </form>	
		<%   }
		  else
		  {	
		  		String country = request.getParameter("country");
		  				%>
		  	
			 <jsp:forward page="country.jsp">
				<jsp:param value="<%=country%>" name="country" />
				<jsp:param value="<%=finalprice%>" name="finalprice" />
				<jsp:param value="<%=pricefree%>" name="pricefree" />
				</jsp:forward>
				
		 <% } %>
</body>
</html>