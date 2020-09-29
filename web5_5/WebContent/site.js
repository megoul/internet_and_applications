////////////////////////////////////////////gia thn timh pou kanei pop up
// When the user clicks on div, open the popup
function myProduct() {
  var popup = document.getElementById("myPopup");
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
/////////////////////////////////////////////////////////////////////////////////////myjs.js
function checkit() {

	/*
	 * var strval = document.form1.name.value; // input text value if(!strval) {
	 * alert("Input name is null "); return( false ); }
	 * 
	 * return true;
	 */
	alert("Checking");
	return false;

}

function validate_form ()
{
    var valid = true;
    var given_name = document.form1.name.value;
    //var given_name = document.getElementById("given_name").value;
    //if (!given_name)
    if(given_name == "")	
    {
        alert ( "Please fill in the 'Your Name' box." );
        valid = false;
    }

    return valid;
}

// Get the HTTP Object
var httpObject = null;
function getHTTPObject() {
	if (window.ActiveXObject)
		return new ActiveXObject("Microsoft.XMLHTTP");
	else if (window.XMLHttpRequest)
		return new XMLHttpRequest();
	else {
		alert("Your browser does not support AJAX.");
		return null;
	}
}

function doWork() {	
	httpObject = getHTTPObject();
	//alert("Preparing doWork() ");
	if (httpObject != null) {
		httpObject.open("GET", "check_username.jsp?username="
				+ document.getElementById('username').value, true);
		httpObject.send(null);
		httpObject.onreadystatechange = setOutput;
	}
}

function setOutput() {
	if (httpObject.readyState == 4 && httpObject.status==200) {
		//alert("total = " + httpObject.responseText);
		var responseFromPage = httpObject.responseText;
		if(responseFromPage.indexOf("available") != -1) {
			document.getElementById('total').style.color = "green";	 	    
	    }
		else {
			document.getElementById('total').style.color = "red";		
		}
		document.getElementById('total').innerHTML = httpObject.responseText;
	}
}
////////////////////////////////////////////////////////////////////////////////////////