<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>order final</title>
</head>
<body>
	<div class="alert alert-info">
		<strong>Your order has been placed!</strong>
	</div>
	<div class="alert alert-warning">
		<strong>Ensure your payment mode is "Cash On Delivery" only!!</strong>
	<form:form method="POST">
	
<input class="btn btn-lg btn-primary" name="_eventId_submit"
						type="submit" value="submit" />

	</form:form>
	
	</div>
	<div class="alert alert-danger">
		<strong>Incase of any damaged or irrelevant delivery, please help us to resolve the issue!!!</strong>
	</div>
</body>

<%@ include file="footer.jsp"%>
</html>