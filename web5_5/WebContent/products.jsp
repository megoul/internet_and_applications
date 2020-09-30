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
 pc pc4= new pc("ethelion6000",700,0);
 
 */%>
<%
session.setAttribute("pc1","0");
session.setAttribute("pc2","0");
session.setAttribute("pc3","0");
session.setAttribute("pc4","0");
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
<button type="button" onclick="alert('added')" >Add to basket</button>
<script>
function myFunction1() {
	session.setAttribute("pc1","1");
	}
function myFunction2() {
	pc2.check=1;
	}
function myFunction3() {
	pc3.check=1;
	}
function myFunction4() {
	pc4.check=1;
	}
</script>
<%
//pc1.setChecked(1); if user puts it in the basket
//session.setAttribute("pc1",pc1);
//session.setAttribute("pc2",pc2);
//session.setAttribute("pc3",pc3);
//session.setAttribute("pc4",pc4);
//if(pc1.checked==1){
//	finalprice=finalprice+pc1.price;
//}
//if(pc2.checked==1){
//	finalprice=finalprice+pc2.price;
//}
//if(pc3.checked==1){
//	finalprice=finalprice+pc3.price;
//}
//if(pc4.checked==1){
//	finalprice=finalprice+pc4.price;
//}
int finalprice=0;
String pc1= (String)session.getAttribute("pc1");
if(pc1.equals(1)){
	finalprice=finalprice+400;
}
session.setAttribute("finalprice",finalprice); %>
final price is:<%=finalprice%>

</body>
</html>