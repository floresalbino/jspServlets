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
	<link rel='stylesheet' href='webjars/bootstrap/3.3.4/css/bootstrap.min.css'>
</head>
<body>
	<div class="container">
        <div class="row">
        	<div class="col-md-4 col-md-offset-4">
        	<div class="page-header"><img src="img/shapes.png" class="img-responsive" alt="Smart"></div>
        		<div class="login-panel panel panel-default">                	
                    <div class="panel-heading">
                        <h3 class="form-signin-heading">Figure selection</h3>
                    </div>
                    <div class="panel-body">
                        <form method="post" action="selectFigure.do" role="form">                        
                            <fieldset>
                                <div class="form-group">
                                    <select class="form-control" name="figure">
                                            <option value="triangle">Triangle</option>	
											<option value="circle">Circle</option>
                                    </select>
                                </div>
                                <div class="form-group">                                
                                	<input type="submit" class="btn btn-primary btn-lg btn-block" value="Submit">                                	
                                	</div>
                            </fieldset>
                        </form>                                                
                    </div>                    
                </div>
                <footer class="footer">
      						<div class="container">
        						<p class="text-muted">Tutorial Java Web</p>
      						</div>
    			</footer>
            </div>             
        </div>             	                	
	</div>
</body>
</html>