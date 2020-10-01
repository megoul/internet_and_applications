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
<% 
String username=(String)session.getAttribute("username");
String pc1=(String)session.getAttribute("pc1");
String pc2=(String)session.getAttribute("pc2");
String pc3=(String)session.getAttribute("pc3");
String pc4=(String)session.getAttribute("pc4");
Integer pricefree=(Integer)session.getAttribute("pricefree");
Integer finalprice=pricefree+pricefree/4;
%>
<h2><%=username%> the products you chose are</h2>
<% 

if(pc1!=null){ %>
<p><%=pc1 %></p>
<%}
if(pc2!=null){ %>
<p><%=pc2 %></p>
<%}
if(pc3!=null){ %>
<p><%=pc3 %></p>
<%}
if(pc4!=null){ %>
<p><%=pc4 %></p>
<%}

%>
pc1 is<%=pc1 %>
pc2 is<%=pc2 %>
pc3 is<%=pc3 %>
pc4 is<%=pc4 %>
pricefree is <%=pricefree %>
<form action="servlet2" method="post">
<h3>Final  price  with tax is __<%=finalprice %>:</h3> <%//=finalprice%>

<table>
  <tr>
    <td>Voucher code:</td>
    <td><input type="text" name="code" size=20 /></td>
  </tr>
  <tr>
	<td colspan=2><input type=submit /></td>
  </tr>
</table>
</form>

	<form method="post" action="county.jsp">
		<div class="dropdown">
		  <button onclick="myBasket()" class="dropbtn">Country</button>
		  <div id="myDropdown" class="dropdown-content">
		  	<select name="country">
		  	
		  	<option value="greece" >Greece(25%)</option>
		  	<option value="italy" >Italy(12%)</option>
		  	<option value="spain" >Spain(10%)</option>
		  	<option value="uk" >UK(20%)</option>
		  	<option value="germany">Germany(40%)</option>
		  	</select>
		  	 <input type="submit" value="Submit">
		  </div>
		</div>
	</form>

</body>
</html>