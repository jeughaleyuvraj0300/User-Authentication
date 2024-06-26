<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css">
	.container{
	margin-top: 100px;
	}
	</style>
</head>
<body>

<div class="container">
<div class="container col col-md-3 border ">
		<h1 class="dispaly-6">Login Page</h1>

		<form action="Login" class="form control m-3">
		
		<label for="un">Enter UserName</label><br><br>
		<input type="text" name="uname" id="un"><br><br>
		
		<label for="up">Enter Password</label><br><br>
		<input type="password" name="upass" id="up"><br><br>
		
		<button class= "btn btn-success">Login</button>

</form>
</div>
</div>



</body>
</html>