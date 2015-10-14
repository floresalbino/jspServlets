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
			HashMap<Enum<?>, Double> params = figure.getParams();
		%>
		<form method="post" action="calculateArea.do">
				
			<h2><% out.print(figure.getName().toUpperCase());%></h2>
			
			<img src="img/<%out.print(figure.getName());%>.jpg">
			<br>
			<h3>Formula: <%out.print(figure.getFormula());%></h3>
			<table>
				<%
				Iterator<HashMap.Entry<Enum<?>,Double>> it = params.entrySet().iterator();
				while (it.hasNext()) {
					HashMap.Entry<Enum<?>,Double> pair = (HashMap.Entry<Enum<?>,Double>)it.next();
		        	%>
			        <tr>
			        	<td><%=((EnumFigure)pair.getKey()).getName()%></td>
			        	<td><input type="text" name=<%=pair.getKey()%> value="<%=pair.getValue()%>"></td>
			        	<td>units</td>			        	
			        </tr>
			    	<%
		    	}				
			%>
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
