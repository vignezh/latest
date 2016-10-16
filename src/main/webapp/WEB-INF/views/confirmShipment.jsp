<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>footbazzar</title>
<link href="<c:url value='/resources/css/font-awesome.css'/>"
	rel="stylesheet">

<!-- Bootstrap -->
<link href="<c:url value='/resources/css/bootstrap.css'/>"
	rel="stylesheet">

<!-- Main style sheet -->
<link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet">


<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>


</head>
<body>
	<div class="col-md-6">
		<div class="aa-myaccount-register">

			<fieldset>
				<legend>Confirm Shipment Details</legend>
				<div class="alert alert-warning">
					<strong>Please check your shipment info</strong>
				</div>
				<form:form modelAttribute="shipment">
					<form:label path="name">User Name:</form:label>${shipment.name}
					<br />
					<br />
					<form:label path="email">Email Id:</form:label>${shipment.email}
					<br />
					<br />
					<form:label path="contact">Contact Number:</form:label>${shipment.contact}
					<br />
					<br />

					<input class="btn btn-lg btn-primary" name="_eventId_edit"
						type="submit" value="Edit" />
					<input class="btn btn-lg btn-primary" name="_eventId_submit"
						type="submit" value="Confirm Details" />
					<br />
				</form:form>
			</fieldset>

		</div>
	</div>

</body>
<%@include file="footer.jsp"%>
</html>
