<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>회원 생성</title>
</head>
<body>
	<h3>회원 생성</h3>
	<form method="post" action="/board/create">
		<div class="form-group">
			<label>이름</label> <input type="text" name="name" class="from-control">
		</div>
		<div class="form-group">
			<label>나이</label> <input type="text" name="age" class="from-control">
		</div>
		<button type="submit" class="btn btn-default">회원 추가</button>
	</form>
</body>
</html>