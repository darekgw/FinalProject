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
<body class="bg fontCol">

	<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
	<ul class="navbar-nav">
		<li class="nav-item active">
			<h4>
				<a class="nav-link" href="<c:url value='/start'/>">Strona główna</a>
			</h4>
		</li>
		<li class="nav-item active">
			<h4>
				<a class="nav-link" href="<c:url value='/user/top'/>">TOP 10</a>
			</h4>
		</li>
		<li class="nav-item active">
			<h4>
				<a class="nav-link" href="#">Kontakt</a>
			</h4>
		</li>
	</ul>
	</nav>

	<center>
		</br>
		<h2>
			<b>Test wiedzy - Junior Java Developer</b>
		</h2>
		</br>
		<h4>
			<b>Pytanie ${questionNo + 1}</b>
		</h4>
		</br>
		<h4>
			<b>Kategoria: ${question.category}</b>
		</h4>
		</br>

		<h4>
			<b>${question.quest}</b>
		</h4>
		</br>

	</center>
	<div class="row">
		<div class="col-xl-3"></div>
		<div class="col-xl-6 form">


			<form method="post">
				<input type="hidden" name="id" value="${question.id}"> <label><input
					type="radio" name="answer" value="${question.answer1}"> <span
					style="font-size: 25px"> ${question.answer1}</span></label> </br> <label><input
					type="radio" name="answer" value="${question.answer2}"> <span
					style="font-size: 25px"> ${question.answer2}</span></label> </br> <label><input
					type="radio" name="answer" value="${question.answer3}"> <span
					style="font-size: 25px"> ${question.answer3}</span></label> </br> </br>
				<center>
					<input class="btn btn-primary btn-lg" type="submit"
						value="Następne pytanie">
				</center>
			</form>
		</div>
		<div class="class="col-xl-3""></div>
	</div>

</body>
</html>