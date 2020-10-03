<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="javax.swing.JOptionPane"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Basket</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel=StyleSheet href="site.css" type="text/css"/>
<script src="site.js" type="text/javascript"></script>
<style>
 h3 {
  width: 50%;
  height: 60px;
  margin: 10px;
  padding: 0;
  display: inline;
  font-size: 30px;
}
</style>
</head>
<body>

<% 
String username=(String)session.getAttribute("username");
String pc1=(String)session.getAttribute("pc1");
String pc2=(String)session.getAttribute("pc2");
String pc3=(String)session.getAttribute("pc3");
String pc4=(String)session.getAttribute("pc4");
Integer pricefree=(Integer)session.getAttribute("pricefree");
Integer finalprice=(Integer)session.getAttribute("finalprice");
//char[]result = (pc1+pc2+pc3+pc4).toCharArray();
%>
<h2><%=username%> the products you chose are </h2>
<% 

if(pc1!=null){ %>
<p>pc1 with id= <%=pc1 %></p>
<%}
if(pc2!=null){ %>
<p>pc2 with id= <%=pc2 %></p>
<%}
if(pc3!=null){ %>
<p>pc3 with id= <%=pc3 %></p>
<%}
if(pc4!=null){ %>
<p>pc4 with id= <%=pc4 %></p>
<%}

%>

<form action="servlet2" method="post">

<%
if((String)session.getAttribute("flag")== "set")
{
	%><h3> Final  price  with tax is </h3> <h3 style="color:red"><%=finalprice %></h3>  <% 
}
else
{
   %><h3> Final  price  with tax is</h3> <h3><%=finalprice %></h3>  <% 
}
%>
<h3>(price without tax is <%=pricefree %>)</h3>
<table>
  <tr>
    <td>Voucher code:</td>
    <td><input type="text" name="code" size=20 /></td>
  </tr>
  <tr>
	<td><input type="submit" value="Submit code"/></td>
  </tr>
</table>
</form>




<% 
if (request.getParameter("country") == null) 
		{
			
	%>
		<br>
		<br>
		<form method="post" action="basket.jsp">	
			<label for="country">country:</label>
			<select name="country">
			  	
			  	<option value=greece >Greece(25%)</option>
			  	<option value=italy >Italy(12%)</option>
			  	<option value=spain >Spain(10%)</option>
			  	<option value=uk >UK(20%)</option>
			  	<option value=germany>Germany(40%)</option>
		  	</select>
		  	<input type="submit" value="Submit Country">
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
<br>
<br>
<button type="button" onclick="location.href='done.jsp';">Done!</button>



</body>

</html>