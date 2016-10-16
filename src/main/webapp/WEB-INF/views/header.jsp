
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HEader page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/respond.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet"
	href="<c:url value="/resources/css/hvr.css"/>" rel="stylesheet">
	<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Bootstrap -->
<link href="<c:url value='/resources/css/bootstrap.css'/>"
	rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value="/resources/css/hover-min.css"/>" rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value="/resources/css/hvr.css"/>" rel="stylesheet">

<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>
	<style>
/* Remove the navbar's default rounded borders and increase the bottom margin */
.navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

/* Remove the jumbotron's default bottom margin */
.jumbotron {
	margin-bottom: 0;
}
/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}

</style>
	
</head>
<body>


	<%-- <div class="collapse navbar-collapse" id="myNavbar">

		<a class="navbar-brand" class="hvr-underline-from-center" href="index">FootBazzar</a> 
		<a class="navbar-brand" class="hvr-underline-from-center" href="viewall1">All Shoes</a>
		<a class="navbar-brand" href="about">About Us</a>
		
		<ul class="nav navbar-nav navbar-right">
			<li><a href="<c:url value="/index"/>">
			<span class="glyphicon glyphicon-home"></span>Home</a></li>
		</ul>
		<marquee bgcolor="orange">We value each & every Customer...!!!</marquee>
		<br>
		<br>
	</div> --%>
	
	<div class="jumbotron">
		<div class="container text-center">
			<h1 class="blink">Online Shoes Store</h1>
			<p class="blink">Make us to carry you through</p>
		</div>
	</div>
	
	
	<div class="header">
		<div class="header-top-strip">
			<div class="container">
				<div class="header-top-left">
					<nav class="navbar navbar-inverse">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#myNavbar">
								<span class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="index" class="hvr-underline-from-center">FootBazzar</a>
						</div>
						<div class="collapse navbar-collapse" id="myNavbar">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#" class="hvr-underline-from-center">Home</a></li>

								<li><security:authorize access="hasRole('ROLE_ADMIN')">
										<a href="product" class="hvr-underline-from-center">Admin Product </a>
									</security:authorize></li>

								<li><a href="about" class="hvr-underline-from-center">About</a></li>
								<li><a href="viewall1" class="hvr-underline-from-center">All items</a></li>
								<li class="dropdown"><a class="dropdown-toggle"
									data-toggle="dropdown">Collections<span class="caret" ></span></a>
									<ul class="dropdown-menu">
										<li><a href="sports" class="hvr-underline-from-center">Sports</a></li>
										<li><a href="casuals" class="hvr-underline-from-center">Casuals</a></li>
										<li><a href="formals" class="hvr-underline-from-center">Formals</a></li>
									</ul></li>
								

							</ul>

							<c:if test="${pageContext.request.userPrincipal.name != null}">
								<ul class="nav navbar-nav navbar-right">

									<li><a href="logout"> Logout</a></li>
								</ul>
							</c:if>
							<c:if test="${pageContext.request.userPrincipal.name == null}">
								<ul class="nav navbar-nav navbar-right">
									<li><a href="login" class="hvr-underline-from-center">
											<span class="glyphicon glyphicon-log-in"></span> SignIn <span
											class="glyphicon glyphicon-user" />
									</a></li>

									<li><a href="memberShip.obj"
										class="hvr-underline-from-center"> <span
											class="glyphicon glyphicon-user"></span> SignUp <span
											class="glyphicon glyphicon-lock" /></a></li>
								</ul>
							</c:if>
							<security:authorize access="hasRole('ROLE_USER')">
								<ul class="nav navbar-nav navbar-right">
									<li><a href="cart"><span
											class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
								</ul>
								<ul class="nav navbar-nav navbar-right">
									<li><a href="orders"><span
											class="glyphicon glyphicon-shopping-cart"></span> My Orders</a></li>
								</ul>
							</security:authorize>
							<h4 align="center">
								<c:if test="${!empty pageContext.request.userPrincipal.name}">
									<a> <span class="glyphicon glyphicon-user"></span> Hello
										${pageContext.request.userPrincipal.name} <span
										class="glyphicon glyphicon-user"></span>
									</a>
								</c:if>
							</h4>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>