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
	double distancia = 0.0;
	double velocidad = 0.0;
	boolean datosValidos = false;
	if (request.getParameter("distancia")!= null && request.getParameter("velocidad") != null) {
		try {
	    distancia = Double.parseDouble(request.getParameter("distancia"));
	    velocidad = Double.parseDouble(request.getParameter("velocidad"));
	    datosValidos = true;
		} catch (NumberFormatException e) {
			out.println("<h3>Rellena el formulario antes de enviar</h3>");
		}
	}
%>
    <h1>Calcular tiempo de viaje</h1>
    <form method="post">
        <label for="distancia">Escribe los km a recorrer:</label> <br>
        <input type="number" name="distancia" step="any"> <br> <br>
        <label for="velocidad">Escribe la velocidad promedia:</label> <br>
        <input type="number" name="velocidad" step="any"> <br> <br>
        <input type="submit">
    </form>
	<%
		if (datosValidos) {
			double tiempo = distancia / velocidad;
	%>
		<h2>El tiempo que se va a tardar es de <%=tiempo%> horas</h2>
	<%
		}
	 %>
</body>
</html>