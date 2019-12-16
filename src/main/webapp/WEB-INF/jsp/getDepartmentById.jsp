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
	<h1>Department</h1>
    <p>Please use filter for specific results.</p>
    <hr>
	<div id="getDepartmentBy">
	<form:form action="/getDepartments" method="post"
			>
			<input type="SUBMIT" class="registerbtn" value="See all" size="200" />
		</form:form>
		<form:form action="/getDepartmentById" method="post"
			modelAttribute="v">
			<p><label>Filter by :</label>&nbsp;<form:select path="attribute">
              <form:option value="dno" name="ID"/>
              <form:option value="dname" name ="First name"/>
              <form:option value="hod" name="Experience"/>
              <form:option value="noemp" name="Language"/>
              <form:option value="joindate" name="Gender"/>

          </form:select>
			&nbsp;&nbsp;
			<label>Where:</label>
			<form:input path="value" size="50"/>
			<input type="SUBMIT" class="registerbtn" value="Search"  />
		</form:form>
		<h3>List of filtered Departments are:</h3>
	</div></div>
	<div class="table-responsive" style="background: white;">
			<table class="table table-bordered" style="max-width:300px;">
				<tbody>
				<c:forEach var="listValue" items="${employees}">

					<tr th:each="review : ${listValue}">
						<td th:text="${review.fname}">${listValue.dno}</td>
						<td th:text="${review.lname}">${listValue.dname}</td>
						<td th:text="${review.id}">${listValue.noemp}</td>
					</tr></c:forEach>
				</tbody>
			</table>
		</div>
</body>
</html>