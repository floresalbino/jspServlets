<!DOCTYPE>
<html>

<%@ page import="java.util.Date" %>	

<%!
	String message  = "Hello world";
%>
	
<body>
	<h1 align=center><%out.println(message);%></h1>
	<p align="center">
		Today is: <%= new Date()%>
	</p>
</body>

</html>