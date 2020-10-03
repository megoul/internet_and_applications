<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
			  <button onclick="myBasket()" class="dropbtn">Country</button>
			<select name="country">
			  	
			  	<option value="greece" >Greece(25%)</option>
			  	<option value="italy" >Italy(12%)</option>
			  	<option value="spain" >Spain(10%)</option>
			  	<option value="uk" >UK(20%)</option>
			  	<option value="germany">Germany(40%)</option>
		  	</select>
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