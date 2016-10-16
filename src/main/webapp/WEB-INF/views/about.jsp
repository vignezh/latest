<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HEader page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}
</style>
</head>
<body>

	<h3>
	A shoe is an item of footwear intended to protect and comfort the human foot while doing various activities. 
	</h3>
	<h4>
	Shoes are also used as an item of decoration. 
	</h4>
	<h5>
	The design of shoes has varied enormously through time and from culture to culture, with appearance originally being tied to function. 
	</h5>
	
	<div id="myCarousel" class="carousel slide">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li class="item1 active"></li>
			<li class="item2"></li>
			<li class="item3"></li>
		</ol>

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
		<!-- <a class="left carousel-control" href="#myCarousel" role="button">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a> -->
	</div>


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
			
			// Enable Carousel Controls
			$(".left").click(function() {
				$("#myCarousel").carousel("prev");
			});
			$(".right").click(function() {
				$("#myCarousel").carousel("next");
			});
		});
	</script>
	
<h5>
High fashion shoes may be made of very expensive materials in complex construction and sell for thousands of dollars a pair. 
Other shoes are for very specific purposes, such as boots designed specifically for mountaineering or skiing.
</h5>

</body>
</html>

<%@include file="footer.jsp"%>
