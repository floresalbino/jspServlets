<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Area calculator</title>
	<style>
		.centerData {text-align:center;}
		table, td, th{ 
			margin: auto;			
		}
	</style>
</head>
<body>


	<div id="main" class="centerData">		
		<form method="post" action="calculateArea.do">
				
			<h2>${fn:toUpperCase(figureAttribute.name)}</h2>
			
			<img src="img/${figureAttribute.name}.jpg">
			<br>
			<h3>Formula: ${figureAttribute.formula}</h3>
			
			<table>
				<c:forEach var="mapa" items="${figureAttribute.params}">
				 <tr>
				 	<td> ${mapa.key.name}</td>
				 	<td><input type="text" name="${mapa.key}" value="${mapa.value}"></td>
			        <td>units</td>
				 </tr>
	    		</c:forEach>				
			</table>			
			
				<br>
				<input type="submit" value="Calculate area">
				<br>
				<h1>Area: <input type="text" name="area" value="${figureAttribute.area}" readonly>units&#178;</h1>
			
			<input type="hidden" name="figure" value="${figureAttribute.name}">
			<br>
			<br>			
			<a href="${pageContext.request.contextPath}/index.jsp"><button type="button">Select another figure</button></a>			
		</form>
	</div>
</body>
</html>