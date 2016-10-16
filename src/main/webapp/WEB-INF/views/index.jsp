<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>E-Commerce</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>

<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>


<!--webfont-->
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- cart -->
<script src="js/simpleCart.min.js">
	
</script>
<!-- cart -->
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



	<div id="myCarousel" class="carousel slide">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li class="item1 active"></li>
			<li class="item2"></li>
			<li class="item3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">

			<div class="item active">
				<img src="<c:url value="resources/pics/caro1.jpg"/>" alt="bt1"
					width="500" height="500" />

				<div class="carousel-caption">
					<h3>Casual Shoes</h3>
					<p>Wear the color that suits you</p>
				</div>
			</div>

			<div class="item">
				<img src="<c:url value="resources/pics/caro2.jpg"/>" alt="bt2"
					width="500" height="500" />
				<div class="carousel-caption">
					<h3>Formal Shoes</h3>
					<p>Feel like a professional</p>
				</div>
			</div>

			<div class="item">
				<img src="<c:url value="resources/pics/caro3.jpg"/>" alt="bt3"
					width="500" height="500" />
				<div class="carousel-caption">
					<h3>Sports Shoes</h3>
					<p>Be like an athlete</p>
				</div>
			</div>

		</div>


		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<br>
	<div>


		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="panel panel-primary">
						<div class="panel-heading">Brand New Collections</div>
						<div class="panel-body">
							<i class="glyphicon glyphicon-magnet">
							
							<img src="<c:url value="resources/pics/indpic3.jpeg"/>"	
							class="img-responsive" style="width: 100%" alt="Image"></i>
						</div>
						<div class="panel-footer">Pick the one that suits you well</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-danger">
						<div class="panel-heading">Brand New Collections</div>
						<div class="panel-body">
						<i class="glyphicon glyphicon-magnet">
							<img src="<c:url value="resources/pics/indpic1.jpeg"/>"	
								class="img-responsive" style="width: 100%" alt="Image"></i>
						</div>
						<div class="panel-footer">Pick the one that suits you well</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-success">
						<div class="panel-heading">Brand New Collections</div>
						<div class="panel-body">
						<i class="glyphicon glyphicon-magnet">
							<img src="<c:url value="resources/pics/indpic2.jpeg"/>"	
							class="img-responsive" style="width: 100%" alt="Image" ></i>
						</div>
						<div class="panel-footer">Pick the one that suits you well</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	
	<div class="online-strip">
		<div class="col-md-4 follow-us">
			<h3>
				follow us : <img src="<c:url value="resources/pics/follow.png"/>"
					alt="" />
			</h3>
		</div>
		<div class="col-md-4 shipping-grid">
			<div class="shipping">
				<img src="<c:url value="resources/pics/shipping.png"/>" alt="" />
			</div>
			<div class="shipping-text">
				<h3>Free Shipping</h3>

			</div>
			<div class="clearfix"></div>
		</div>
		<div class="col-md-4 online-order">
			<p>Order online</p>
			<h3>Book online: +91 9876543210</h3>
		</div>
		<div class="clearfix"></div>
	</div>
	<footer class="container-fluid text-center">
		<p>Online Store Copyright</p>
		<form class="form-inline">
			Get deals: <input type="email" class="form-control" size="50"
				placeholder="Email Address">
			<button type="button" class="btn btn-danger">Sign Up</button>
		</form>

	</footer>

	<script>
		$(document).ready(function() {
			// Activate Carousel
			$("#myCarousel").carousel();
			// Enable Carousel Indicators
			$(".item1").click(function() {
				$("#myCarousel").carousel(0);
			});
			$(".item2").click(function() {
				$("#myCarousel").carousel(1);
			});
			$(".item3").click(function() {
				$("#myCarousel").carousel(2);
			});
			$(".item4").click(function() {
				$("#myCarousel").carousel(3);
			});
			// Enable Carousel Controls
			$(".left").click(function() {
				$("#myCarousel").carousel("prev");
			});
			$(".right").click(function() {
				$("#myCarousel").carousel("next");
			});
		});
	</script>
</body>
</html>
