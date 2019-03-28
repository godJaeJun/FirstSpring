<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- BootStrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>회원 상세</title>
</head>
<body>
	<h3>회원 상세</h3>
	<div style="padding: 30px;">
		<div class="form-group">
			<label>이름</label> <span>${board.name}</span>
		</div>
		<div class="form-group">
			<label>나이</label> <span>${board.age}</span>
		</div>
		<div class="form-group">
			<input type="button" value="수정"
				onclick='location.href="/board/create/${board.bno}"'>
			<form:form action="/board/create/${board.bno}" method="DELETE">
				<input type="submit" value="삭제">
			</form:form>
		</div>
	</div>
</body>
</html>