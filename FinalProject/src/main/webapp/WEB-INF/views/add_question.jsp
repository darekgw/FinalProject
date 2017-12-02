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
<title>Insert title here</title>
</head>
<body>
	Add question:

	<form:form method="post" modelAttribute="question">
              Difficulty:
				<form:input path="difficulty" />
		<form:errors path="difficulty" />
	    </br> 
				Question:
				<form:input path="quest" />
		<form:errors path="quest" />
		</br>
				Answer1:
				<form:input path="answer1" />
		<form:errors path="answer1" />
		</br>
				Answer2:
				<form:input path="answer2" />
		<form:errors path="answer2" />
		</br>
				Answer3:
				<form:input path="answer3" />
		</br>
				Answer4:
				<form:input path="answer4" />
		</br>
				RightAnswer:
				<form:input path="rightAnswer" />
		<form:errors path="rightAnswer" />
		</br> 
		<input type="submit" value="Save">
	</form:form>

</body>
</html>