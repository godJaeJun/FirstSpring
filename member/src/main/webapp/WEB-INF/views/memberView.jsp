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
<title>Member</title>
</head>
<body>
	<h3>Member</h3>
	<div style="padding: 30px;">
		<div class="form-group">
			<label>Name</label> <span>${member.name}</span>
		</div>
		<div class="form-group">
			<label>Age</label> <span>${member.age}</span>
		</div>
		<div class="form-group">
			<input type="button" value="update"
				onclick='location.href="/member/mem/${member.num}"'>
			<form:form action="/member/mem/${member.num}" method="DELETE">
				<input type="submit" value="delete">
			</form:form>
		</div>
	</div>
</body>
</html>