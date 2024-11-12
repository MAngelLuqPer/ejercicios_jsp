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
	int numMulti = 0;
	boolean datosValidos = false;
	if (request.getParameter("numMulti")!= null) {
		try {
		numMulti = Integer.parseInt(request.getParameter("numMulti"));
		datosValidos = true;
		} catch (NumberFormatException e) {
			out.println("<h3>Rellene el formulario antes de enviar</h3>");
		}
	}
	
	if (numMulti > 10 || numMulti < 0) {
		out.println ("<h3>Introduzca un nº entre 1 y 10</h3>");
		datosValidos = false;
		numMulti = 0;
	}
%>


<form method="post">
    <label for="numMulti">Introduzca el nº que desee mostrar la tabla de multiplicar:</label> <br>
    <input type="number" name="numMulti"/><br><br>
    <input type="submit"/>
</form>
<%
	if (datosValidos) {
	%>
	<h3>Mostrando la tabla de multiplicar de <%=numMulti %>:</h3>
	
	<%
		for (int i = 1; i <= 10; i++) {
		
	%>
		<p><%=numMulti %> * <%=i %> = <%= numMulti * i %> </p>
	<%
		}
	}
%>
</body>
</html>