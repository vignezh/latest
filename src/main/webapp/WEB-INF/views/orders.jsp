<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>order contents</title>
</head>
<body>
	
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-10 col-md-offset-1">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>OrderId</th>
								<th>CartId</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach items="${orderitems}" var="order">
								<tr>

									<td class="col-sm-1 col-md-1 text-center"><strong>${order.OrderId}</strong></td>
									<td class="col-sm-1 col-md-1 text-center"><strong>${order.cart.cartId}</strong></td>

								</tr>

							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
		</div>


</body>
</html>
<%@ include file="footer.jsp"%>
