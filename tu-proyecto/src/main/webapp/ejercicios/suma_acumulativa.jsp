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
	int sumaAcum = 0;
	int resultado = 0;
	boolean datosValidos = false;
	if (request.getParameter("sumaAcum")!= null) {
		try {
		sumaAcum = Integer.parseInt(request.getParameter("sumaAcum"));
		datosValidos = true;
		} catch (NumberFormatException e) {
			out.println("<h3>Rellene el formulario antes de enviar</h3>");
		}
	}
%>


<form method="post">
    <label for="sumaAcum">Introduzca el nº para realizar la suma acumulativa</label> <br>
    <input type="number" name="sumaAcum"/><br><br>
    <input type="submit"/>
</form>
<%
	if (datosValidos) {
	%>
	<h3>Mostrando la suma acumulativa de <%=sumaAcum %>:</h3>
	
	<%
		for (int i = 1; i <= sumaAcum; i++) {
		
	%>
		<p><%=resultado %> + <%=i %> = <%= resultado + i %> </p>
	<%
			resultado += i;
		}
	}
%>
</body>
</html>