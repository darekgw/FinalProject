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
<link rel="stylesheet" href="../resources/css/style.css">
<title>Insert title here</title>
</head>
<body>
	Podsumowanie
	</br> <b class="points">Twój wynik to: ${pointsScored} na ${questionNo} możliwych</b>
	</br>
	<a href="<c:url value='/start'/>">sprobój ponownie</a>
	</br>
	<div>
		<div id="table1">
			<table>
				<tr>
					<th>Pytanie:</th>
					<th>Prawidłowa odpowiedź:</th>
				</tr>
				<c:forEach items="${askedQuestions}" var="askedQuestion">
					<tr>
						<td>${askedQuestion.quest}</td>
						<td>${askedQuestion.rightAnswer}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div id="table2">
			<table>
				<tr>
					<th>Twoja odpowiedź to:</th>
				</tr>
				<c:forEach items="${answers}" var="answer">
					<tr>
						<td>${answer}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>