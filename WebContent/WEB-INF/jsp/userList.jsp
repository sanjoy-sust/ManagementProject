
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User List</title>
<link rel="stylesheet" href="/ManagementProject/css/tableDesign.css">


</head>
<body>
	<table border="1" class="grid">
		<th>Name</th>
		<th>Full Name</th>
		<th>Email</th>
		<th>Address</th>
		<th>Nationality</th>
		<th>Occupation</th>
		<th>National Id</th>
		<th>Edit</th>
        <th>Delete</th>
		<c:forEach var="user" items="${userList}">

			<tr bordercolor="red">

				<td bordercolor="red">${user.name}</td>
				<td bordercolor="red">${user.fullName}</td>
				<td bordercolor="red">${user.email}</td>
				<td bordercolor="red">${user.address}</td>
				<td bordercolor="red">${user.nationality}</td>
				<td bordercolor="red">${user.occupation}</td>
				<td bordercolor="red">${user.nationalId}</td>
				<td><form:form method="POST" action="update.htm"
						commandName="user">
						<form:hidden name="id" path="id" value="${user.id}" />
						<form:hidden name="name" path="name" value="${user.name}" />
						<form:hidden name="fullName" path="fullName"
							value="${user.fullName}" />
						<form:hidden name="email" path="email" value="${user.email}" />
						<form:hidden name="address" path="address" value="${user.address}" />
						<form:hidden name="nationality" path="nationality"
							value="${user.nationality}" />
						<form:hidden name="occupation" path="occupation"
							value="${user.occupation}" />
						<form:hidden name="nationalId" path="nationalId"
							value="${user.nationalId}" />
						<form:hidden name="password" path="password" value="${user.password}" />
						<form:hidden name="designation" path="designation"
							value="${user.designation}" />
						<form:hidden name="gender" path="gender" value="${user.gender}" />
						<button type="submit" name="submit" value="Edit">Edit</button>
					</form:form></td>
					<td><form:form method="POST" action="delete.htm"
						commandName="user">
						<form:hidden name="id" path="id" value="${user.id}" />
						<form:hidden name="name" path="name" value="${user.name}" />
						<form:hidden name="fullName" path="fullName"
							value="${user.fullName}" />
						<form:hidden name="email" path="email" value="${user.email}" />
						<form:hidden name="address" path="address" value="${user.address}" />
						<form:hidden name="nationality" path="nationality"
							value="${user.nationality}" />
						<form:hidden name="occupation" path="occupation"
							value="${user.occupation}" />
						<form:hidden name="nationalId" path="nationalId"
							value="${user.nationalId}" />
						<form:hidden name="password" path="password" value="${user.password}" />
						<form:hidden name="designation" path="designation"
							value="${user.designation}" />
						<form:hidden name="gender" path="gender" value="${user.gender}" />
						<button type="submit" name="submit" value="Delete">Delete</button>
					</form:form></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>