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
	<div >
		<input type="number" name="numar1"> 
		<input type="number" name="numar2"> 
			<input id="formular" type="submit">
	</div>
	
	<p id="rezultat"> </p>

	<script> 
	document.getElementById("formular").addEventListener("click", function(){
		
    document.getElementById("rezultat").innerHTML = "Suma";
	});
	</script>
	
</body>
</html>
</body>
</html>