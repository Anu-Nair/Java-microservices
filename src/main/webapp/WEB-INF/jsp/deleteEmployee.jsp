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
  background-color: #f3363e;
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
	<h1>Delete Employee</h1>
    <p>Please fill in the Id to delete an employee.</p>
    <hr>
	<div id="deleteEmployee">
		<form:form action="/deleteEmployee" method="post"
			modelAttribute="emp">
			<p>
				<label>ID:</label><br>
				<form:input path="id" size="50" placeholder="Enter ID" />
			</p>
			<br><br>
			<input type="SUBMIT" class="registerbtn" value="Delete" /><br><br><br><br><br><br><br><br><br><br>
		</form:form>
	</div></div>
</body>
</html>