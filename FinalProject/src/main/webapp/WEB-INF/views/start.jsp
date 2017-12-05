<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	 <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/style.css"/>">
<title>Insert title here</title>
<style>

</style>
</head>
<body>

<nav class="navbar navbar-expand-sm">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <h2 class="nav-item"></h2>
    </li>
  </ul>
</nav>
</br>
</br>

<div class="jumbotron">
<h1 >Witaj na stronie testu wiedzy języka Java!</h1>
</br>
<p>Rozwiązanie testu pomoże Ci odpowiedzieć na pytanie, czy jesteś już gotowy na rozpoczęcie
swojej wymażonej pracy na stanowisku Junior Java Developera.</p>
<p>Przed Tobą ${noOfQuestions} pytań jednokrotnego wyboru. Za każde pytnie możesz otrzymać 1 punkt.
 Pamiętaj, że błędna odpowiedź lub brak odpowiedzi to punkt ujemny.</p>
 <p>Gotowy? To zaczynamy!</p>
 <center>
 </br>
 <div ><a type="button" class="btn btn-primary btn-lg" href="<c:url value='/question'/>">ROZPOCZNIJ TEST</a></div>
 </center>
</div>
</br>

</body>
</html>