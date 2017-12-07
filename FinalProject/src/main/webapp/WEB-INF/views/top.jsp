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
		<div class="container biggest">
			</br> </br>
			<h1>
				<b>Lista 10 najlepszych wyników:</b>
			</h1>
			</br> </br>
			<div class="container">
				<table class="table table-striped">
					<tr>
						<th>Numer</th>
						<th>Nick</th>
						<th>Ilość punktów</th>
					</tr>
					<c:forEach items="${top}" var="t" varStatus="theCount">
						<tr>
							<td>${theCount.index + 1}</td>
							<td>${t.name}</td>
							<td>${t.pointsScored}</td>
						</tr>
					</c:forEach>
				</table>
			</div>

			</br>
			<div>
				<a type="button" class="btn btn-primary btn-lg"
					href="<c:url value='/start'/>">SPRÓBUJ PONOWNIE</a>
			</div>
			</br> </br>
		</div>
	</center>
</body>
</html>