<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
<style>
body {
  font-family: "Lato", sans-serif;
}
/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 250px;
  height:40px;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}
.main {
	margin-top: 60px;
  margin-left: 200px; /* Same as the width of the sidenav */
}</style>
</head>
<jsp:include page="menu.jsp" />
<body>

<div class="main"><br>
	<h1>Update Department</h1>
    <hr>
	<div id="updateDepartment">
		<form:form action="/updateDepartment" method="post"
			modelAttribute="emp">
			<p>
				<label>Enter the Dno of department to be updated:</label><br>
				<form:input path="dno" size="50" placeholder="Enter Dno" />
			</p><hr><br>
			<p>
				<label>Department Name:</label><br>
				<form:input path="dname" size="50" placeholder="Enter department name"/>
			</p>
			<p>
				<label>Start Date:</label><br>
				<form:input path="startdate" size="50" placeholder="Enter start date" />
			</p>
			<p>
				<label>No. of employees</label><br>
				<form:input path="noemp" size="50" placeholder="Enter number of employees"/>
			</p>
			<br><br>
			<input type="SUBMIT" class="registerbtn" value="Update" /><br><br><br><br><br><br><br><br><br><br>
		</form:form>
	</div></div>
</body>
</html>