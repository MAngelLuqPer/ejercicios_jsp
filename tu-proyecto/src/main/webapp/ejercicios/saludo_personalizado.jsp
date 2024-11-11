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
	String nombre = request.getParameter("nombre");
	String apellidos = request.getParameter("apellidos");
%>
	    <form action="saludo_personalizado.jsp">
	        <label for="nombre">Introduzca el nombre: </label> <br/>
	        <input type="text" name="nombre" id="nombre" required> <br/> <br/>
	        <label for="apellidos">Introduzca el apellido: </label> <br/>
	        <input type="text" name="apellidos" id="apellidos" required><br/>
	        <input type="submit"/>
    	</form>
	<%
		if (nombre != null && apellidos != null) {
	%>
		<h2>Bienvenido a mi página web <%=nombre%> <%=apellidos %></h2>	
	<%	
		}
	
	%>
</body>
</html>