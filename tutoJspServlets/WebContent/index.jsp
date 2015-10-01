<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Area Calculator</title>
	<style>
		.centerData {text-align:center;}
	</style>
</head>
<body>
	<div id="main" class="centerData">
		<h1>Figure selection</h1>
		<form method="post" action="selectFigure.do">
		<p>
		Select figure:
		<select name="figure">
		<option value="triangle">Triangle</option>	
		<option value="circle">Circle</option>
		</select>	<br>
		<br>
		<br>
		<input type="submit" value="Submit">			
		</form>
	</div>
</body>
</html>