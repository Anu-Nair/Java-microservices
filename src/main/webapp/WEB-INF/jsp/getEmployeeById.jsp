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
  max-width:300px;
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
	
	<form:form action="/getEmployeeById" method="post" modelAttribute="v"><p>
		<input type="SUBMIT" class="registerbtn" value="GET"  /></a>Year of Joining    :<form:input id="p2" path="value" size="50"/></p>
	</form:form>
	<form:form action="/getEmployeesdname" method="post" modelAttribute="v"><p>
		<input type="SUBMIT" class="registerbtn" value="GET"  />Department name :<form:input id="p3" path="value"  size="49"/></p>
	<h3>List of filtered employees are:</h3>
	</form:form></div><div></div></div>
	<div class="table-responsive" style="background: white;">
	
			<table class="table table-bordered" style="max-width:300px;">
				<tbody>
				<c:forEach var="listValue" items="${employees}">

					<tr th:each="review : ${listValue}">
						<td th:text="${review.fname}">${listValue.fname}</td>
						<td th:text="${review.lname}">${listValue.lname}</td>
						<td th:text="${review.id}">${listValue.id}</td>
					</tr></c:forEach>
				</tbody>
			</table>
		</div>
</body>
</html>