<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%
	String connectionURL = "jdbc:mysql://localhost:3306/mydatabase";
	Connection connection = null;
	Statement statement = null;	
	ResultSet rs = null;

%>

<html>
<head>
<link rel=StyleSheet href="login.css" type="text/css"/>
<script src="site.js" type="text/javascript"></script>
<title>homepage</title>
</head>
<body>
<ul>
<li onclick="location.href='login_and_forward.jsp';">logout</li>
<li onclick="loadDoc('pageupdate_and_forward.jsp')">pageupdate</li>
<li onclick="loadDoc('products.jsp')">products</li>
<li onclick="loadDoc('basket.jsp')">basket</li>
<li onclick="location.href='homepage.jsp';">myhomepage</li>
</ul>
</div>
<div id=content class=box>
<% 

//String username=request.getParameter("username"); 
//session.setAttribute("username",username); 
String username=(String)session.getAttribute("username");
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root",
		"");
statement = connection.createStatement();
String sqlSelect = "SELECT name,birthdate FROM mytable WHERE username =\"" + username  + "\" ;";	
rs = statement.executeQuery(sqlSelect);
while(rs.next())
{
String rs1 = rs.getString("name");
String rs2 = rs.getString("birthdate");
//session.setAttribute("name",rs1); 
//session.setAttribute("birthdate",rs2); 
%>				

		<div class="login-box">
			<h1>Homepage-Your Data</h1>
		
			<div class="login-in">
			<p>Username: <%=username%></p>
			</div>
		
			<div class="login-in">
			<p>FirstName-LastName:<%=rs1 %> </p>
			</div>
			
			<div class="login-in">
			<p>Birthdate:<%=rs2 %></p>
			</div>
		
			
		</div>
</div>
</body>
</html>
<%} rs.close(); %>
