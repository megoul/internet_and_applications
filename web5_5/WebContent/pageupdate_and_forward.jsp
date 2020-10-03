<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%
	String connectionURL = "jdbc:mysql://localhost:3306/mydatabase";
	Connection connection = null;
	Statement statement = null;	
	ResultSet rs5 = null;
%>
<html>
<head>
<link rel=StyleSheet href="site.css" type="text/css"/>
<script src="site.js" type="text/javascript"></script>
</head>
<body>
	<%
		if (   request.getParameter("name") == null || request.getParameter("birthdate") == null 
				) {
	%>

	
	<br /> User: <%=(String)session.getAttribute("username")%> make your changes!!
	<form method="post" action="pageupdate_and_forward.jsp">
		<table>
			<tr>
				<td>FisrtName-LastName:</td>
				<td><input type="text" name="name" size=60 /></td>
			</tr>
			<tr>
				<td>Birthdate:</td>
				<td><input type="date" name="birthdate" /></td>
			</tr>
			<tr>
				<td colspan=2><input type=submit /></td>
			</tr>
		</table>
	</form>

	<%
			}
		else {
			
				String name = request.getParameter("name");
				String birthdate = request.getParameter("birthdate");
				String username =(String)session.getAttribute("username");
				
				
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				connection = DriverManager.getConnection(connectionURL, "root",
						"");
				statement = connection.createStatement();	
				String sqlUpdate= "UPDATE mytable SET name=\"" + name  + "\",birthdate=\"" + birthdate  + "\" WHERE username=\"" + username  + "\";";		
				statement.executeUpdate(sqlUpdate);
				
				String sqlSelect1 = "SELECT * FROM mytable WHERE username =\"" + username  + "\" ;";	
				rs5 = statement.executeQuery(sqlSelect1);
				
				while(rs5.next())
				{
					String rs1 = rs5.getString("name");
					String rs2 = rs5.getString("birthdate");
					session.setAttribute("name",rs1); 
					session.setAttribute("birthdate",rs2); 
						%>
						<h1>
								User with username <%=username%> 
								your data is updated to name <%=name%>,birthdate <%=birthdate%>!
							</h1>
							you can return to myhomepage
							<a href="homepage.jsp">here</a>
			 <%}
		 
		
		rs5.close();
		}
		%>
			
		


</body>
</html>