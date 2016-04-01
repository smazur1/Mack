<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Grades</title>
</head>


<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 15px;
}

th {
	text-align: left;
}
</style>
</head>
<body>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<table style="width: 100%">
		<tr>
			<th>Student ID</th>
			<th>Assignment ID</th>
			<th>Assignment</th>
			<th>Type</th>
			<th>Date</th>
			<th>Grade</th>
		</tr>
		<c:forEach var="item" items="${assignments}">
			<tr>
				<td><c:out value="${item.studentid }" /></td>
				<td><c:out value="${item.id }" /></td>
				<td><c:out value="${item.assignment }" /></td>
				<td><c:out value="${item.type }" /></td>
				<td><c:out value="${item.assigndate }" /></td>
				<td><c:out value="${item.grade }" /></td>

			</tr>
		</c:forEach>
	</table>


<form action="servletcontrol" method="post">
		<p>
		<br/><h3>Update Grade</h3>
		To update an Assignment Grade, enter the Assignment ID and the new Grade. 
			<br/><br/>
			
			<input type="hidden" id="studentid" name="studentid" value="${studentid}">
			<label for="assignmentid">Enter Assignment ID:</label> 
				<input id="id" name="id" value="${param.id}">
				
				
				<label for="grade">Enter Grade:</label> 
				<input id="grade" name="grade" value="${param.grade}">
				<input type="hidden" name="option" value="7">
				
				<input type="submit">
		</p>
	</form>

<form action="servletcontrol" method="post">
		<p>
		<br/><h3>Insert Assignment</h3>
		To insert an Assignment, enter the following information. 
			<br/><br/>
			
				<input type="hidden" id="studentid" name="studentid" value="${studentid}">
				
				<label for="assignment">Enter Assignment Name:</label> 
				<input type="text" id="assignment" name="assignment" value="${param.assignment}">
				<br/>
				<label for="type">Enter Assignment Type:</label> 
				<input type="text" id="type" name="type" value="${param.type}">
				<br/>
				<label for="grade">Enter Grade:</label> 
				<input id="grade" name="grade" value="${param.grade}">
				
				<input type="hidden" name="option" value="8">
				
				<input type="submit">
		</p>
	</form>



</body>
</html>