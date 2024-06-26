<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Signup</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css">
	.container{
	margin-top: 50px;
	<!--background-color: #AED6F1 -->
	}
	</style>
</head>
<body>

<div class="container">
<div class="container col col-md-3 border ">
		<h1 class="dispaly-6">SignUp Page</h1>

		<form action="signup" class="form control m-3">
		
		<label for="un">Enter UserName</label><br>
		<input type="text" name="uname" id="un"><br><br>
		
		<label for="up">Enter Password</label><br>
		<input type="password" name="upass" id="up"><br><br>
		
		<label for="ue">Enter Email</label><br>
		<input type="email" name="uemail" id="ue"><br><br>
		
		<label for="ud">Enter DOB</label><br>
		<input type="date" name="udob" id="ud"><br><br>
		
		<button class= "btn btn-success">Signup</button><br>
		<a href="login.jsp">?if Already User Click Here To Login</a>

</form>
</div>
</div>


</body>
</html>