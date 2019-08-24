<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<style type="text/css">

	body
	{
		margin: 0;
		padding: 0;
		font-family: sans-serif;
		font-weight: 400;
	}

	.loginbox
	{
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		width: 350px;
		height: 420px;
		padding: 125px 40px;
		box-sizing: border-box;
		background: white;
		border-style: groove;
	}
	.logo
	{
		width: 100px;
		height: 100px;
		border-radius: 50%;
		overflow: hidden;
		position: absolute;
		top: calc(10px);
		left: calc(50% - 50px);
	}
	h2
	{
		margin: 0;
		padding: 0 0 20px;
		color: #343434;
	}
	label 
	{ 
		font-size: 13px
	}
	.loginbox input[type="text"],
	.loginbox input[type="password"],
	.loginbox input[type="button"]
	{
		width: 100%;
		margin-bottom: 20px;
		height: 25px;
	}
	.loginbox label[type="text"],
	.loginbox label[type="password"]
	{
		margin-bottom: 20px;
		color: white;
	}
</style>
</head>
<body>
<form action="MyServlet">

	<div class="loginbox">
	
		<img class="logo" src="https://portal.jumpercursos.com.br/content/images/lock-login.png">
		<h2>Login</h2>
		<label for="group1" style="font-weight: bold;">Username</label>
		<input name="btn" type="text"  placeholder="User ID" style="margin-top: 10px;"><br>
		<label for="group1" style="font-weight: bold;">password</label>
		<input name="btn" type="password" placeholder="Password" style="margin-top: 10px;"><br>
		<input name="btn" type="button" value="Login">
		<input type="checkbox" name="group" id="group1" value="1" title="Main List" />
    	<label for="group1">Keep me signed in.</label>
		
	</div>
	
</form>
</body>
</html>