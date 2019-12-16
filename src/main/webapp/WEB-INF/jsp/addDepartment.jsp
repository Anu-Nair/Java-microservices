<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Department</title>
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

<div class="main">
	<h1>Add Department</h1>
    <p>Please fill in this form to add an department.</p>
    <hr>
	<div id="addDepartment">
		<form:form action="/addNewDepartment" method="post"
			modelAttribute="emp">
			<p>
				<label>Department Number:</label><br>
				<form:input path="dno" size="50" placeholder="Enter department number"/>
			</p>
			<p>
				<label>Department Name:</label><br>
				<form:input path="dname" size="50" placeholder="Enter department name" />
			</p>
			<p>
				<label>Id of HOD:</label><br>
				<form:input path="hodid" size="50" placeholder="Enter ID" />
			</p>
			<p>
				<label>Start date:</label><br>
				<form:input path="startdate" size="50" placeholder="Enter start date "/>
			</p>
			<p>
				<label>Number of employees</label><br>
				<form:input path="noemp" size="50" placeholder="Enter employees(number)"/>
			</p>
			
			<br><br>
			<input type="SUBMIT" class="registerbtn" value="Register" /><br><br><br><br><br><br><br><br><br><br>
		</form:form>
	</div></div>
</body>
</html>