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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="<c:url value="/static/css/style.css"/>">
<title>Insert title here</title>
</head>
<body>
	<h1>Add question:</h1>
</br>
<div class="container">
	<form:form method="post" modelAttribute="question">
	<div class="form-group">
              Category:
				<form:input path="category" />
		<form:errors path="category" />
	    </br> 
	    </div>
	    <div class="form-group">
				Question:
				<form:input path="quest" />
		<form:errors path="quest" />
		</br>
		</div>
		<div class="form-group">
				Answer1:
				<form:input path="answer1" />
		<form:errors path="answer1" />
		</br>
		</div>
		<div class="form-group">
				Answer2:
				<form:input path="answer2" />
		<form:errors path="answer2" />
		</br>
		</div>
		<div class="form-group">
				Answer3:
				<form:input path="answer3" />
		</br>
		</div>
		<div class="form-group">
				RightAnswer:
				<form:input path="rightAnswer" />
		<form:errors path="rightAnswer" />
		</br> 
		</div>
		<input type="submit" value="Save">
	</form:form>
</div>
</body>
</html>