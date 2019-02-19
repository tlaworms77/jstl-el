<%@page import="vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	UserVo vo1 = new UserVo();
	vo1.setNo(1);
	pageContext.setAttribute("vo1", vo1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL-EL Practice_02</title>
</head>
<body>
	<h1>Scope Test01</h1>
	Application Scope: ${ applicationScope.vo4.no } <br>
	Session Scope: ${ sessionScope.vo3.no } <br>
	request Scope(직접): ${ requestScope.vo2.no } <br>
	page Scope: ${ pageScope.vo1.no } <br>
	
	<h1>Scope Test02</h1> - page->request->session->application scope로 알고리즘
	<h5>(간접접근 --> 알고리즘을 가서 어떤scope인지 확인하는 과정이 필요해짐)</h5>
	Application Scope: ${ vo4.no } <br>
	Session Scope: ${ vo2.no } <br>
	request Scope(간접): ${ vo2.no } <br>
	page Scope: ${ vo1.no } <br>
</body>
</html>