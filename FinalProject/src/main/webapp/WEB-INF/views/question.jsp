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
Odpowiedz na pytanie:
</br>
${question.quest}
</br>

<form	method="post">
<input type="hidden" name="id" value="${question.id}">
${question.answer1}
<input type="radio" name="answer" value="${question.answer1}">
</br>
${question.answer2}
<input type="radio" name="answer" value="${question.answer2}">
</br>
${question.answer3}
<input type="radio" name="answer" value="${question.answer3}">
</br>
<input	type="submit"	value="Save">
</form>


</body>
</html>