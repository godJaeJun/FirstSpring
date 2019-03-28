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
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<title>Member Update</title>
</head>
<body>
	<h3>Member Update</h3>
	<div style="padding: 30px;">
		<form:form modelAttribute="memberVO"
			action="/member/mem/${member.num}" method="PATCH">
			<div class="form-group">
				<label>Name</label> <input type="text" name="name"
					value="${member.name}" class="form-control">
			</div>
			<div class="form-group">
				<label>Age</label> <input type="text" name="age" value="${member.age}"
					class="form-control">
			</div>
			<button type="submit" class="btn btn-default">Update</button>
		</form:form>
	</div>
</body>
</html>