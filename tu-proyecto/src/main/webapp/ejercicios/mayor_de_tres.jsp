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
	double num1 = 0.0;
	double num2 = 0.0;
	double num3 = 0.0;
	double numMayor = 0.0;
	boolean datosValidos = false;
	if (request.getParameter("num1")!=null && request.getParameter("num2")!= null && request.getParameter("num3")!= null) {
		num1 = Double.parseDouble(request.getParameter("num1"));
		num2 = Double.parseDouble(request.getParameter("num2"));
		num3 = Double.parseDouble (request.getParameter("num3"));
		datosValidos = true;
	}
	if (num1 > num2 && num1 > num3) {
		numMayor = num1;
	} else if (num2 > num1 && num2 > num3) {
		numMayor = num2;
	}else {
		numMayor = num3;
	}
%>
<h1>¿Cual de todos es el mayor?</h1>
<form method="post">
    <label for="num1">Escribe el primer número</label> <br>
    <input type="number" name="num1" step="any"> <br>
    <label for="num2">Escribe el segundo número</label> <br>
    <input type="number" name="num2" step="any"> <br>
    <label for="num3">Escribe el tercer número</label> <br>
    <input type="number" name="num3" step="any"> <br> <br>
    <input type="submit">
</form>
<%
	if (datosValidos) {
%>
<h2>El nº más grande es el <%=numMayor%></h2>
<%
	}
%>

</body>
</html>