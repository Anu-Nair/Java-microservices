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
 #myDIV{background-color: WhiteSmoke;
    background-size:     cover;                      /* <------ */
    background-repeat:   no-repeat;
    background-position: center center; 
    background-image: url("https://miro.medium.com/max/3000/1*cRjevzZSKByeCrwjFmBrIg.jpeg");

    }
.main {
	margin-top: 60px;
  margin-left: 200px; /* Same as the width of the sidenav */
}</style>
</head>
<jsp:include page="menu.jsp" />
<body>

<div id = "#myDIV" class="main"><br>
	<h1>Add Employee</h1>
    <p>Please fill in this form to add an employee.</p>
    <hr>
	<div id="addEmployee">
		<form:form action="/addNewEmployee" method="post"
			modelAttribute="emp">
			<p>
				<label>First Name:</label><br>
				<form:input path="fname" size="50" placeholder="Enter first name"/>
			</p>
			<p>
				<label>Last Name:</label><br>
				<form:input path="lname" size="50" placeholder="Enter last name" />
			</p>
			<p>
				<label>ID:</label><br>
				<form:input path="id" size="50" placeholder="Enter ID" />
			</p>
			<p>
				<label>Date of Birth:</label><br>
				<form:input path="bdate" size="50" placeholder="Enter DOB"/>
			</p>
			<p>
				<label>Start Date:</label><br>
				<form:input path="joindate" size="50" placeholder="Enter day of joining"/>
			</p>
			<p>
				<label>Gender:</label><br>
				<form:input path="gender" size="50" placeholder="Male/Female/Other"/>
			</p>
			<p>
				<label>Language:</label><br>
				<form:input path="lang" size="50" placeholder="Enter language"/>
			</p>
			<p>
				<label>Years of Experience:</label><br>
				<form:input path="exp" size="50" placeholder="Enter experience"/>
			</p>
			<p>
				<label>Address:</label><br>
				<form:input path="address" size="50" placeholder="Enter Address"/>
			</p>
			<p>
				<label>Department Number:</label><br>
				<form:input path="dno" size="50" placeholder="Enter Department number"/>
			</p>
			<p>
				<label>Salary:</label><br>
				<form:input path="salary" size="50" placeholder="Enter salary"/>
			</p>
			<p>
				<label>Contact No.</label><br>
				<form:input path="contact" size="50" placeholder="Enter Contact number"/>
			</p><br><br>
			<input type="SUBMIT" class="registerbtn" value="Register" /><br><br><br><br><br><br><br><br><br><br>
		</form:form>
	</div></div>
</body>
</html>