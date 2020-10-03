<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%
	String connectionURL = "jdbc:mysql://localhost:3306/mydatabase";
	Connection connection = null;
	Statement statement = null;	
	ResultSet rs = null;
%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<% 
	Integer finalprice=Integer.parseInt(request.getParameter("finalprice"));
	Integer pricefree=Integer.parseInt(request.getParameter("pricefree"));
	String country=request.getParameter("country");
%>


<% 
			    Class.forName("com.mysql.jdbc.Driver").newInstance();
				connection = DriverManager.getConnection(connectionURL, "root",
						"");
				statement = connection.createStatement();
				String sqlSelect = "SELECT tax FROM mytable2 WHERE country =\"" + country  + "\" ;";	
				rs = statement.executeQuery(sqlSelect);
				while(rs.next())
				{
					int rs1 = rs.getInt("tax"); //tax is rs1
				%>
				
				<%
				
				   //// Double pricefree= (Double) session.getAttribute("pricefree");	
				finalprice=((100+rs1)*pricefree)/100;
					session.setAttribute("finalprice",finalprice);
					//request.getRequestDispatcher("endiameso.jsp").forward(request,response);

					%>
					  finalprice is <%=finalprice %>.Go back to basket
            <a href="basket.jsp">link text</a>
<% 
					
						
				} 
				
				rs.close();
				  %> 
				  
				
	
</body>
</html>