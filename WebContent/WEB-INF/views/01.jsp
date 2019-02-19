<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL-EL Practice_01</title>
</head>
<body>
	<h1>데이터 타입</h1>
	${iVal } <br>
	${lVal } <br>
	${fVal } <br>
	${bVal } <br>
	--${obj }-- <br>
	
	<h1>연산 -jstlel-</h1>
	${ iVal+20*lVal/2 } <br>
	${ iVal > lVal } <br>
	${ iVal > lVal && fVal < 5 } <br>
	${ empty obj } <br>
	${ not empty obj } <br>
	
	<h1>요청 파라미터 가져오기</h1>
	<%= Integer.parseInt(request.getParameter("a")) + 10 %> <br>
	${ param.a + 10 } <br>
	
	<h1>객체 접근</h1>
	${ requestScope.vo.no } &nbsp; requestScope.vo.no 로 사용안할 시 알고리즘 로직 후 찾아온다. 실상 requestScope 담겨있다는 뜻이다. <br> 
	${ vo.name } <br>
	${ vo } <br>
</body>
</html>