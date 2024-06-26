<%@page import="com.Entity.UserData"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<%String check =(String) session.getAttribute("check");
ArrayList<UserData> al=(ArrayList<UserData>) session.getAttribute("note");

if(check!=null)
{

%>
				<h1 class="display-6 text-center">Dashboard</h1>
				<h1 class="display-6">welcome <%=check %></h1>
				<a href="logout" class="btn btn-danger">Logout</a>
				<%@ include file ="addnote.jsp"%>
			
				<!-- read -->
				
					<%
					if(al!=null)
					{
					%>
					
					<%
					for(UserData note:al)
					{
					%>
					<div class="container">
					<div class="row">
					<div class="container col col-md-4 border ">
							<p>
							Note: <%=note.getNote() %>
							</p>
							
							<p class="pdate">
							Add Date: <%=note.getAddDate() %>
							
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							Last Update: <%=note.getmDate() %>
							</p>
							<form action="deletenote" method="post">
							<input type="hidden" name="note" value="<%=note.getNote()%>">
							<input type="hidden" name="name" value="<%=check%>">
							<button class="btn btn-danger btn-sm">Delete</button>
							</form>
					</div>
					</div>
					</div>
					
					<br>
					<%}
					}
					else
					{
					%>
					
					<h1 class="text-center text-danger">please Add notes</h1>
					<%} %>
					
				





<%}
else
{
response.sendRedirect("login.jsp");	
}
%>


</body>
</html>