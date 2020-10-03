
////////////////////////////////////////////////////////////////////////////////////////for added  products
function myFunction1() {
	alert("Added");
    var x= "checked1";
    window.location.replace("products.jsp?checked="+x);
}

function myFunction2() {
	alert("Added");
    var x = "checked2";
    window.location.replace("products.jsp?checked="+x);
}
function myFunction3() {
	alert("Added");
    var x = "checked3";
    window.location.replace("products.jsp?checked="+x);
}
function myFunction4() {
	alert("Added");
    var x = "checked4";
    window.location.replace("products.jsp?checked="+x);
}

////////////////////////////////////////////gia thn timh pou kanei pop up
// When the user clicks on div, open the popup
// When the user clicks on div, open the popup
function myProduct() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}
function myProduct2() {
	  var popup = document.getElementById("myPopup2");
	  popup.classList.toggle("show");
}
function myProduct3() {
	  var popup = document.getElementById("myPopup3");
	  popup.classList.toggle("show");
}
function myProduct4() {
	  var popup = document.getElementById("myPopup4");
	  popup.classList.toggle("show");
}

//////////////////////////////////////////////////////////////////////gia country drop down list
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myBasket() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////code.js
var xmlhttp;

function loadDoc(url){
	xmlhttp= new XMLHttpRequest();
	xmlhttp.onreadystatechange=onComplete;
	xmlhttp.open("GET",url,true);
	xmlhttp.send(null); //den stelno kati zhtav mono
}
//0 unsent
//1 opened
//2 headers_received
//3 loading
//4 done

function onComplete(event){
	if(xmlhttp.readyState==4){
		writeContent(xmlhttp.responseText)
	}
}

function writeContent(data){ //data einai to responseText apo to request pou kaname
	document.getElementById("content").innerHTML=data;//allazo mono to element me id content oxi ta alla
	
}

////////////////////////////////////////////////////////////////////////////////////


