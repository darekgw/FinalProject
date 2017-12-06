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
<title>Insert title here</title>
</head>
<body>
	<a href="<c:url value='/question/add'/>">ADD QUESTION</a>
	<h3>Question's list</h3>
	<table class="table table-bordered">
		<tr>
			<th>id</th>
			<th>category</th>
			<th>question</th>
			<th>answer1</th>
			<th>answer2</th>
			<th>answer3</th>
			<th>rightAnswer</th>
		</tr>
		<c:forEach items="${questions}" var="question">
			<tr>
				<td>${question.id}</td>
				<td>${question.category}
				<td>${question.quest}</td>
				<td>${question.answer1}</td>
				<td>${question.answer2}</td>
				<td>${question.answer3}</td>
				<td>${question.rightAnswer}</td>
			</tr>
			<tr>
				<td><a href="<c:url value="/question/del/${question.id}/"/>">DELETE</a></td>
			</tr>
			<tr>
				<td><a href="<c:url value="/question/edit/${question.id}/"/>">EDIT</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>