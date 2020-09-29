<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<link rel=StyleSheet href="site.css" type="text/css"/>
<script src="site.js" type="text/javascript"></script>
</head>
<body>
<h2>Available objects</h2>

<br>1)pc ethelion3000  
<img src="images\pc1.jpg" alt="sorry wrong" width="460" height="345">
<div class="popup" onmouseover="myProduct()" onmouseout="myFunction()">prize 400
  <span class="popuptext" id="myPopup">The price with tax(25%) is 500!</span>
</div>
<button type="button" onclick="alert('Added!')">Add to basket</button>

<br>2)pc ethelion15000  
<img src="images\pc2.jpg" alt="sorry wrong" width="460" height="345">
<div class="popup" onmouseover="myProduct()" onmouseout="myFunction()">prize 500
  <span class="popuptext" id="myPopup">The price with tax(25%) is 625!</span>
</div>
<button type="button" onclick="alert('Added!')">Add to basket</button>

<br>3)pc ethelion4000  
<img src="images\pc3.jpg" alt="sorry wrong" width="460" height="345">
<div class="popup" onmouseover="myProduct()" onmouseout="myFunction()">prize 600
  <span class="popuptext" id="myPopup">The price with tax(25%) is 750!</span>
</div>
<button type="button" onclick="alert('Added!')">Add to basket</button>

<br>4)pc ethelion6000  
<img src="images\pc4.jpg" alt="sorry wrong" width="460" height="345">
<div class="popup" onmouseover="myProduct()" onmouseout="myFunction()">prize 700
  <span class="popuptext" id="myPopup">The price with tax(25%) is 875!</span>
</div>
<button type="button" onclick="alert('Added!')">Add to basket</button>

<%session.setAttribute("finalprice","700"); %>


</body>
</html>