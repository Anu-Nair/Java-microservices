<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page session="false"%>
<html>
<head>
<title>Show Employees</title>
<style>
body {
  font-family: "Lato", sans-serif;
}
table {
  padding: 50px;
  margin: 30px;
  width: 50px;
}
/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100px;
  height:30px;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}
select{
 width: 100px;
 height: 26px;
}
.main {
	margin-top: 60px;
  margin-left: 30px; /* Same as the width of the sidenav */
}</style>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<body>

<div class="main"><br>
	<h1>Employee</h1>
    <p>Please use filter for specific results.</p>
    <hr>
	<div id="getEmployeeBy">
	<form:form action="/getEmployees" method="post"
			>
			<input type="SUBMIT" class="registerbtn" value="See all" size="200" />
		</form:form>
		<form:form action="/getEmployeeById" method="post"
			modelAttribute="v">
			<p><label>Filter by :</label>&nbsp;<form:select path="attribute">
              <form:option value="id" name="ID"/>
              <form:option value="fname" name ="First name"/>
              <form:option value="exp" name="Experience"/>
              <form:option value="lang" name="Language"/>
              <form:option value="gender" name="Gender"/>
              <form:option value="dno" name="Department Number"/>
          </form:select>
			&nbsp;&nbsp;
			<label>Where:</label>
			<form:input path="value" size="50"/>
			<input type="SUBMIT" class="registerbtn" value="Search"  />
		</form:form>
	</div></div>
	<div class="table-responsive" style="background: white;">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>ID</th>
						<th>DOB</th>
						<th>JoinDate</th>
						<th>Gender</th>
						<th>Language</th>
						<th>Experience</th>
						<th>Address</th>
						<th>Dno</th>
						<th>Contact</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="listValue" items="${employees}">
		
					<tr th:each="review : ${listValue}">
						<td th:text="${review.fname}">${listValue.fname}</td>
						<td th:text="${review.lname}">${listValue.lname}</td>
						<td th:text="${review.id}">${listValue.id}</td>
						<td th:text="${review.bdate}">${listValue.bdate}</td>
						<td th:text="${review.joindate}">${listValue.joindate}</td>
						<td th:text="${review.dno}">${listValue.gender}</td>
						<td th:text="${review.gender}">${listValue.lang}</td>
						<td th:text="${review.lang}">${listValue.exp}</td>
						<td th:text="${review.exp}">${listValue.address}</td>
						<td th:text="${review.address}">${listValue.dno}</td>
						<td th:text="${review.address}">${listValue.contact}</td>
					</tr></c:forEach>
				</tbody>
			</table>
		</div>
</body>
</html>