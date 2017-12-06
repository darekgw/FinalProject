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
<div class="container">
<center>
</br> 
</br>
	<h1><b>Podsumowanie</b></h1>
	</br> 
	<h2><span class="points">Twój wynik to: ${pointsScored} z ${questionNo}</span><span>, co daje </span>
	<span>${percent}</span><span>%</span></h2>
	</br>
	</br>
	<div class="bigger">
	<c:set var="percent" value="${percent}"/>
	<c:choose>
	<c:when test="${percent >= 75}">
	<h4>Brawo! Osiągnąłeś doskonały wynik!
	Najwyższy czas na sprawdzenie się w prawdziwym projekcie!</h4></c:when>
	<c:when test="${percent >= 60}">
	<h4>Brawo! Całkiem niezły wynik!
	Jeszcze trochę pracy i będziesz gotowy na Swoję pierwszą rozmowę kwalifikacyjną!</h4></c:when>
	<c:otherwise>
	<h4>Niestety, ale na dzień dzisiejszy Twoja wiedza nie wystarcza do 
	rozpoczęcia swojej piewszej pracy w branży IT.
	Głowa do góry i do roboty! Następnym razem na pewno będzie lepiej!</h4></c:otherwise>
	</c:choose>
	</div>
	</br>
	
	</br>
	

		
		<div class="container">
			<table class="table table-striped">
				<tr>
				    <th>Kategoria:</th>
					<th>Pytanie:</th>
					<th>Prawidłowa odpowiedź:</th>
					<th>Twoja odpowiedź:</th>
				</tr>
				<c:forEach items="${askedQuestions}" var="askedQuestion" varStatus="theCount">
					<tr>
					    <td>${askedQuestion.category}</td>
						<td>${askedQuestion.quest}</td>
						<td>${askedQuestion.rightAnswer}</td>
						<td>${answers[theCount.index]}</td>
					</tr>
				</c:forEach>
			</table>
	</div>
	</br>
	<div><a type="button" class="btn btn-primary btn-lg" href="<c:url value='/start'/>">SPRÓBUJ PONOWNIE</a></div>
</center>
</div>
</body>
</html>