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
Integer pricefree=100;
Integer finalprice=pricefree +pricefree/4;
session.setAttribute("finalprice",finalprice);
session.setAttribute("pricefree",pricefree);
%>
Price free is <%=pricefree %>
Finalpice is <%=finalprice %>
Please move to try2
							<a href="try2.jsp">here</a>
</body>
</html>