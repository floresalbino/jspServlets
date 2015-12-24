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
			font-size: 14px;		
		}
	</style>
	<link rel='stylesheet' href='webjars/bootstrap/3.3.4/css/bootstrap.min.css'>
</head>
<body>
<div class="container">
 <!-- Static navbar -->
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Area calculator</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="${pageContext.request.contextPath}/index.jsp">Main page</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Select other figure<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="selectFigure.do?figure=triangle">Triangle</a></li>
                  <li><a href="selectFigure.do?figure=circle">Circle</a></li>                  
                </ul>
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>


	<div id="main" class="centerData">		
		<form method="post" action="calculateArea.do">
				
			<div class="container">
		        <div class="row">
		        	<div class="col-md-4 col-md-offset-4">
		        		<div class="login-panel panel panel-default">                	
		                    <div class="panel-heading">
		                        <h3 class="form-signin-heading">${fn:toUpperCase(figureAttribute.name)}</h3>                        
		                    </div>
		                    <div class="panel-body">
		                            <fieldset>
		                            	<div class="form-group">
		                        			<img src="img/${figureAttribute.name}.png" alt="figure">                                           	
		                                </div>
		                                <div class="form-group">
		                                	Formula: ${figureAttribute.formula}
		                                </div>
		                    			<div class="form-group">
		                                <table>
											<c:forEach var="mapa" items="${figureAttribute.params}">
											 <tr>
											 	<td> ${mapa.key.name}</td>
											 	<td><input type="text" name="${mapa.key}" value="${mapa.value}"></td>
										        <td>units</td>
											 </tr>
								    		</c:forEach>				
										</table>
		                                </div>            
		                                <div class="form-group">
		                                  <input type="submit"  class="btn btn-primary btn-lg btn-block" value="Calculate area">
		                                </div>
		                                <div class="form-group">
		                                  Area: <input type="text" name="area" value="${figureAttribute.area}" readonly>units&#178;
		                                </div>
		                                <div class="form-group">                                
		                                                                	
		                                </div>
		                            </fieldset>                                                                        
		                    </div>                    
		                </div>
		                
		            </div>             
		        </div>             	                	
			</div>	
			
			<input type="hidden" name="figure" value="${figureAttribute.name}">					
		</form>
		<footer class="footer">
		      						<div class="container">
		        						<p class="text-muted">Tutorial Java Web</p>
		      						</div>
		    			</footer>
	</div>
	
 </div> <!-- /container -->
 
  <script type="text/javascript" src='webjars/jquery/2.1.4/dist/jquery.min.js'></script>
  <script src='webjars/bootstrap/3.3.4/js/bootstrap.min.js'></script>
    	
</body>
</html>