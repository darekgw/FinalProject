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
	 <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/style.css"/>">
<title>Insert title here</title>
</head>
<body>

<center>
</br>
<h1>Test wiedzy - Junior Java Developer</h1>
</br>
<h3>Pytanie ${questionNo + 1}</h3>
</br>
</br>
<h3>${question.quest}</h3>
</br>
</br>
</center>
<div class="row">
  <div class="col-xl-3"></div>
  <div class="col-xl-6 form">
  

<form method="post">
<input type="hidden" name="id" value="${question.id}">
<label><input type="radio" name="answer" value="${question.answer1}"><span style="font-size:30px"> ${question.answer1}</span></label>
</br>
<label><input type="radio" name="answer" value="${question.answer2}"><span style="font-size:30px"> ${question.answer2}</span></label>
</br>
<label><input type="radio" name="answer" value="${question.answer3}"><span style="font-size:30px"> ${question.answer3}</span></label>
</br>
</br>
<center>
<input	type="submit"	value="Następne pytanie">
</center>
</form>
</div>
<div class="class="col-xl-3""></div>
</div>

</body>
</html>