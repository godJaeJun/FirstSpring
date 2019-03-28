<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- BootStrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>회원목록</title>
</head>
<body>
	<h3>회원 목록</h3>
	<button class="btn btn-primary" style="float: right;"
		onclick="location.href='/board/create'">추가</button>
	<table class="table">
		<tr>
			<th>No</th>
			<th>이름</th>
			<th>나이</th>
		</tr>
		<c:forEach var="board" items="${list}">
			<tr>
				<td>${board.bno}</td>
				<td><a href="/board/${board.bno}">${board.name}</td>
				<td>${board.age}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>