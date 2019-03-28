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
<title>Member Create</title>
</head>
<body>
	<h3>Member Create</h3>
	<div style="padding: 30px;">
		<form method="POST" action="/member/mem">
			<div class="form-group">
				<label>Name</label> 
				<input type="text" name="name" class="form-control">
			</div>
			<div class="form-group">
				<label>Age</label> <input type="text" name="age" class="form-control">
			</div>
			<button type="submit" class="btn btn-default">create</button>
		</form>
	</div>
</body>
</html>