<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.util.*" %>
<%@ page import="com.tuto.java.interfaces.Figure" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Area calculator</title>
</head>
<body>
	<%
		Figure fig = (Figure) request.getAttribute("objectParam");
		ArrayList<String> params = fig.getParameters();
	%>
	<table>
		<tr>
			<% out.print("Calculate area of: " + fig.getName());%>
		</tr>
		<tr>
			<td><img src="img/triangle.jpg"></td>
		</tr>
	<%
		for (String attributeName : params){		
		%>
        <tr>
        	<td>
        	<%out.print(attributeName + ": ");%> <input type="text" name=<%out.print(attributeName.toLowerCase() + "_text_box");%>>        	      
        	</td>             
        </tr>
    	<% 
		}
	%>
	</table>
	
</body>
</html>