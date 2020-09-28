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

