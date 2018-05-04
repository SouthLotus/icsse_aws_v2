<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content=""><meta name="author" content="">

<title>Login page</title>
<link rel="icon" href="static/images/icon.png" />
<link href="static/css/my.css" rel="stylesheet">
<link href="static/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<div class="alert alert-info" style="text-align: center;">
  <strong>Welcome to Login page ICSSE 2017!</strong>
</div>
<br>
<br>
<p class="error">${requestScope.error }</p>
<form action="/login" method="post" class="form-horizontal">
			<div class="form-group">
				<label class="control-label col-md-3">User name: </label>
				<div class="col-md-7">
					<input type="email" name="uname" placeholder="Email" 
						class="form-control" autofocus>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-md-3">Password: </label>
				<div class="col-md-7">
					<input type="password" name="upass" placeholder="Password"
						class="form-control">
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-9">
				</div>
				<div class="col-md-1">
					<input type="submit" name="usubmit" value="Đăng nhập" class="btn btn-primary pull-right" />
				</div>
			</div>
		</form>
</body>

</html>