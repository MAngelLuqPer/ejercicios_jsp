<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int edad = 0;
	String catEdad = "";
	boolean datosValidos = false;
	if (request.getParameter("edad")!= null) {
		try {
		edad = Integer.parseInt(request.getParameter("edad"));
		datosValidos=true;
		} catch (NumberFormatException e) {
			out.println("<h3>Rellene el formulario con datos válidos</h3>");
		}
	}
	
	if (datosValidos) {
		if (edad < 12){
			catEdad = "Infante";
		} else if (edad >= 12 && edad <= 17) {
			catEdad= "Adolescente";
		} else if (edad >=18 && edad <=60){
			catEdad="Adulto";
		} else if (edad > 60) {
			catEdad="Anciano";
		}
	}
%>


<h1>Clasificación de edades</h1>
<form method="post">
    <label for="edad">¿Qué edad tiene usted?</label> <br>
    <input type="number" name="edad"/><br><br>
    <input type="submit"/>
</form>
<%
	if (datosValidos) {
%>
<h2>Según la edad introducida, usted es un <%=catEdad%></h2>	
<%	
	}

%>
</body>
</html>