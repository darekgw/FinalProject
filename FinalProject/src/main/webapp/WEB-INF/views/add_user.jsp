<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@	page isELIgnored="false"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/static/css/style.css"/>">
<title>Insert title here</title>
</head>
<body class="bg">

	<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
	<ul class="navbar-nav">
		<li class="nav-item active">
			<h4>
				<a class="nav-link" href="<c:url value='/start'/>">Strona główna</a>
			</h4>
		</li>
		<li class="nav-item active">
			<h4>
				<a class="nav-link" href="<c:url value='/user/top'/>">TOP 20</a>
			</h4>
		</li>
		<li class="nav-item active">
			<h4>
				<a class="nav-link" href="#">Kontakt</a>
			</h4>
		</li>
	</ul>
	</nav>

	</br>
	</br>
	</br>
	<center>
		<div class="container biggest">
			<h1>
				<b>WYBIERZ NICK:</b>
			</h1>
			</br> </br>
			<form:form method="post" modelAttribute="user">
				<form:input type="hidden" path="pointsScored"
					value="${pointsScored}" />
				<form:input path="name" />
				<form:errors path="name" />
				<input type="submit" />
			</form:form>
		</div>
	</center>

</body>
</html>