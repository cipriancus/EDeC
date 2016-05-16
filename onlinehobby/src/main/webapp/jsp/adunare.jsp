<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html>
<body>
	<form>
		<input type="number" name="numar1"> <input type="number"
			name="numar2"> <input id="formular" type="submit">
	</div>

	<p id="rezultat"></p>

	<script> 
	document.getElementById("formular").addEventListener("click", function(e){
	e.preventDefault();
    document.getElementById("rezultat").innerHTML ="apelat";
	var xhr = new XMLHttpRequest();
    var URL='http://localhost:8017/onlinehobby/Adunare?numar1='+document.getElementById('numar1').value+'&numar2='+document.getElementById('numar2').value;
	xhr.open('GET', URL);	
    xhr.onload = function() {
    	var suma=xhr.responseText;
        document.getElementById("rezultat").innerHTML =suma;
	  };
	  xhr.send();
	});
	</script>

</body>
</html>
</body>
</html>