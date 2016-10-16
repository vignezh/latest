<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HEader page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

	<div class="col-md-6">
		<div class="alert alert-info">
			<strong>Please enter your right info</strong>
		</div>
		<div class="aa-myaccount-register">

			<form:form modelAttribute="userDetails" accept-charset="utf-8"
				class="form" role="form">
				<form:errors path="*" cssClass="errorblock" element="div" />
				<p></p>
							Name:
							<form:input path="user_name" pattern="[a-zA-Z]{3,30}"
					required="true" class="form-control input-lg"
					placeholder="Enter your name" />
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('user_name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
							
						E-mail:
						<form:input path="mail_id"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="true"
					class="form-control input-lg" placeholder="Enter your mail id" 
					title="eg:kumar123@gmail.com" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('mail_id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<br />

						Contact Number:
						<form:input path="contact" pattern="[9|7|8][0-9]{9}"
					required="true" class="form-control input-lg"
					placeholder="Enter your contact number" 
					title="9876543210" />
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('contact')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />

						Password:
						<form:password path="password" required="true"
					class="form-control input-lg" placeholder="Enter your password" 
				pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,10}" 
				title="Please enter atleast an upper&lower case and a number eg:Password1"/>
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
						Confirm Password:
						<form:password path="con_password" required="true"
					class="form-control input-lg" placeholder="Confirm Password" 
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,10}" 
				title="Please enter the same password entered in password section"/>
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('con_password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
				<button class="btn btn-lg btn-primary btn-block signup-btn"
					name="_eventId_submit" type="submit" value="submit" onclick="validatePassword()">
					Sign Up</button>
					
				<input type="button" value="back" class="btn btn-lg"
					onclick="javascript:history.back()" />
				
			</form:form>
		</div>
	</div>

<script type="text/javascript">
	
	function validatePassword()
	{
		var password=document.getElementById("password").value;
		var confirmpass=document.getElementById("con_password").value;
		if(password!=confirmpass)
			{
			alert("Mismatch of password occured");
			
			}
		return true;
	}
 	</script>
	
</body>
<%@ include file="footer.jsp"%>
</html>
