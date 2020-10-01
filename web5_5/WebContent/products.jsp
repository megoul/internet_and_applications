<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%! /*
class pc
{
    public String name;
    public int price;  
    public int  checked;
    
    public pc(String a, int b, int c) {
        name = a;
        price = b;
        checked=c;
    }
    
    public void setChecked(int a) {
    	checked = a;
    }
 };
 public int finalprice=0;
 pc pc1= new pc("ethelion3000",400,0);
 pc pc2= new pc("ethelion15000",500,0);
 pc pc3= new pc("ethelion4000",600,0);
 pc pc4= new pc("ethelion6000",700,0); */

 %>
<%
int pricefree=0;
int finalprice=0;
//Integer pricefree=(Integer)session.getAttribute("pricefree");
//session.setAttribute("pc1","0");
//session.setAttribute("pc2","0");
//session.setAttribute("pc3","0");
//session.setAttribute("pc4","0");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<link rel=StyleSheet href="site.css" type="text/css"/>
<script src="site.js" type="text/javascript"></script>
</head>
<body>
<h1>Go to basket</h1>
<ul>
<li onclick="location.href='basket.jsp';">basket</li>
</ul>
<h2>Available objects </h2>


				<br>1)pc ethelion3000
				<img src="images\pc1.jpg" alt="sorry wrong" width="460" height="345">
				<div class="popup" onmouseover="myProduct()" onmouseout="myFunction()">prize 400
				  <span class="popuptext" id="myPopup">The price with tax(25%) is 500!</span>
				</div>
				<button type="button" onclick="myFunction1()">Add to basket</button>
				
				
				<br>2)pc ethelion15000  
				<img src="images\pc2.jpg" alt="sorry wrong" width="460" height="345">
				<div class="popup" onmouseover="myProduct2()" onmouseout="myFunction()">prize 500
				  <span class="popuptext" id="myPopup2">The price with tax(25%) is 625!</span>
				</div>
				<button type="button" onclick="myFunction2()" >Add to basket</button>
				
				
				<br>3)pc ethelion4000  
				<img src="images\pc3.jpg" alt="sorry wrong" width="460" height="345">
				<div class="popup" onmouseover="myProduct3()" onmouseout="myFunction()">prize 600
				  <span class="popuptext" id="myPopup3">The price with tax(25%) is 750!</span>
				</div>
				<button type="button" onclick="myFunction3()" >Add to basket</button>
				
				<br>4)pc ethelion6000  
				<img src="images\pc4.jpg" alt="sorry wrong" width="460" height="345">
				<div class="popup" onmouseover="myProduct4()" onmouseout="myFunction()">prize 700
				  <span class="popuptext" id="myPopup4">The price with tax(25%) is 875!</span>
				</div>
				<button type="button" onclick="myFunction4()" >Add to basket</button>


<%

	if (request.getParameter("checked") == null)
	{

	}
	else if (request.getParameter("checked").equals("checked1"))
	{
		
		session.setAttribute("pc1","ethelion3000");
		
		if (session.getAttribute("pricefree") == null)
		{
			pricefree=400;
			
		}
		else
		{
			pricefree=(Integer)session.getAttribute("pricefree")+400;
		}
		finalprice=pricefree+pricefree/4;
		session.setAttribute("pricefree",pricefree);
		session.setAttribute("finalprice",finalprice);
		
	}
	else if (request.getParameter("checked").equals("checked2"))
	{
		session.setAttribute("pc2","ethelion15000");
		
		if (session.getAttribute("pricefree") == null)
		{
			pricefree=500;
		}
		else
		{
			pricefree=(Integer)session.getAttribute("pricefree")+500;
		}
		finalprice=pricefree+pricefree/4;
		session.setAttribute("pricefree",pricefree);
		session.setAttribute("finalprice",finalprice);
	}
	else if (request.getParameter("checked").equals("checked3"))
	{
		session.setAttribute("pc3","ethelion4000");

		if (session.getAttribute("pricefree") == null)
		{
			pricefree=600;
		}
		else
		{
			pricefree=(Integer)session.getAttribute("pricefree")+600;
		}
		
		finalprice=pricefree+pricefree/4;
		session.setAttribute("pricefree",pricefree);
		session.setAttribute("finalprice",finalprice);
	}
	else if (request.getParameter("checked").equals("checked4"))
	{
		session.setAttribute("pc4","ethelion6000");

		if (session.getAttribute("pricefree") == null)
		{
			pricefree=700;
		}
		else
		{
			pricefree=(Integer)session.getAttribute("pricefree")+700;
		}		
		
		finalprice=pricefree+pricefree/4;
		session.setAttribute("pricefree",pricefree);
		session.setAttribute("finalprice",finalprice);
	}

%>



pc1 is: <%=session.getAttribute("pc1") %>
pc2 is: <%=session.getAttribute("pc2") %>
pc3 is: <%=session.getAttribute("pc3") %>
pc4 is: <%=session.getAttribute("pc4") %>
pricefree is: <%=session.getAttribute("pricefree") %>
</body>
</html>