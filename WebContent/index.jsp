<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Grades</title>
</head>
<body>
<h2>Student Grades</h2>
	<form action="servletcontrol" method="post">
		<p>
			<label for="studentid">Enter student ID:</label> 
				<input id="studentid" name="studentid" value="${param.studentid}">
				<input type="hidden" name="option" value="1">
				
				<input type="submit">
		</p>
	</form>
-------------------------------------------------------------------------------------------

	<form action="servletcontrol" method="post">
		<p>
			<label for="type">Find all assignments of entered type by anyone.<br/>
				Enter type:</label> 
				<input id="type" name="type" value="${param.type}">
				<input type="hidden" name="option" value="2">
				
				<input type="submit">
		</p>
	</form>
------------------------------------------------------------------------------------------
	<form action="servletcontrol" method="post">
		<p>
			<label for="studentid">Find all assignments of entered type by a student.<br/>
				Enter student ID:</label> 
				<input id="studentid" name="studentid" value="${param.studentid}">
				<br>
				Enter type:</label> 
				<input id="type" name="type" value="${param.type}">
				<input type="hidden" name="option" value="3">
				
				<input type="submit">
		</p>
	</form>
-----------------------------------------------------------------------------------------
	<form action="servletcontrol" method="post">
		<p>
			<label for="studentid">Find the average for a student.<br/>
				Enter student ID:</label> 
				<input id="studentid" name="studentid" value="${param.studentid}">
				<input type="hidden" name="option" value="4">
				
				<input type="submit">
		</p>
	</form>
----------------------------------------------------------------------------------------
	<form action="servletcontrol" method="post">
		<p>
			<label for="studentid">Find the average for a student by type.<br/>
				Enter student ID:</label> 
				<input id="studentid" name="studentid" value="${param.studentid}">
				<br>
				Enter type:</label> 
				<input id="type" name="type" value="${param.type}">
				<input type="hidden" name="option" value="5">
				
				<input type="submit">
		</p>
	</form>
---------------------------------------------------------------------------------------
	<form action="servletcontrol" method="post">
		<p>
			<label for="type">Find highest and lowest grades for an assignment type.<br/>
				Enter type:</label> 
				<input id="type" name="type" value="${param.type}">
				<input type="hidden" name="option" value="6">
				
				<input type="submit">
		</p>
	</form>

</body>
</html>