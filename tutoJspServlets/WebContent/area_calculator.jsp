<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.util.*" %>
<%@ page import="com.tuto.java.model.Figure" %>
<%@ page import="com.tuto.java.model.EnumFigure" %>


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
		<%
			Figure figure = (Figure) request.getAttribute("figureAttribute");
		%>
		<form method="post" action="calculateArea.do">
				
			<h2><% out.print(figure.getName().toUpperCase());%></h2>
			
			<img src="img/<%out.print(figure.getName());%>.jpg">
			<br>
			<h3>Formula: <%out.print(figure.getFormula());%></h3>
			<table>	
			        <tr>
			        	<td><%out.print(EnumFigure.BASE.getName());%></td>
			        	<td><input type="text" name=<%out.print(EnumFigure.BASE);%> value="<%out.print(figure.getParams().get(EnumFigure.BASE));%>"></td>
			        	<td>units</td>
			        </tr>
			        <tr>
			        	<td><%out.print(EnumFigure.HEIGHT.getName());%></td>
			        	<td><input type="text" name=<%out.print(EnumFigure.HEIGHT);%> value="<%out.print(figure.getParams().get(EnumFigure.HEIGHT));%>"></td>
			        	<td>units</td>
			        </tr>
			        <tr>
			        	<td><%out.print(EnumFigure.RADIUS.getName());%></td>
			        	<td><input type="text" name=<%out.print(EnumFigure.RADIUS);%> value="<%out.print(figure.getParams().get(EnumFigure.RADIUS));%>"></td>
			        	<td>units</td>
			        </tr>
			</table>			
				<br>
				<input type="submit" value="Calculate area">
				<br>
				<h1>Area: <input type="text" name="area" value="<%out.print(figure.getArea());%>" readonly>units&#178;</h1>
			
			<input type="hidden" name="figure" value=<%out.print(figure.getName());%>>
			<br>
			<br>			
			<h2><a href="<%=request.getScheme()%>://<%=request.getServerName()%>:<%=request.getServerPort()%><%=request.getContextPath()%>/index.jsp">Select another figure</a></h2>
		</form>
	</div>
</body>
</html>