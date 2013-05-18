<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form method="post" commandName="user" id="regForm">
		<table align="center">
			<tr>
				<td align=center>User registration</td>
			</tr>
			<tr>
				<td>Full Name:</td>
				<td><form:input id="fullName" path="fullName" /></td>
				<td id="fullNameError" class="red">&nbsp;</td>
			</tr>
			<tr>
				<td>User Name:</td>
				<td><form:input id="name" path="name" /></td>
				<td id="nameError" class="red">&nbsp;</td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><form:password id="password" path="password" /></td>
				<td id="passwordError" class="red">&nbsp;</td>
			</tr>
			<tr>
				<td>Confirm Password:</td>
				<td><input id="vpass" type="password" id="cPass" /></td>
				<td id="vpassError" class="red">&nbsp;</td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><form:textarea id="address" path="address" rows="3"
						cols="17" /></td>
				<td id="addressError" class="red">&nbsp;</td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><form:input id="email" path="email" /></td>
				<td id="emailError" class="red">&nbsp;</td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><form:radiobutton name="gender" path="gender" value="Male"
						label="Male" disabled="false"/> <form:radiobutton name="gender" path="gender"
						value="Female" label="Female" /></td>
				<td id="genderError" class="red">&nbsp;</td>
			</tr>
			<tr>
				<td>Occupation:</td>
				<td><form:input id="occupation" path="occupation" /></td>
				<td id="occupationError" class="red">&nbsp;</td>
			</tr>
			<tr>
				<td>Designation:</td>
				<td><form:input id="designation" path="designation" /></td>
				<td id="designationError" class="red">&nbsp;</td>
			</tr>
			<tr>
				<td>Nationality:</td>
				<td><form:input id="nationality" path="nationality" /></td>
				<td id="nationalityError" class="red">&nbsp;</td>
			</tr>
			<tr>
				<td>National ID:</td>
				<td><form:input id="nationalId" path="nationalId" /></td>
				<td id="nationalIdError" class="red">&nbsp;</td>
			</tr>
			<tr>
				<td><button type="reset" value="CLEAR" id="reset">CLEAR</button></td>
				<td><button type="submit" id="subbutton" value="Submit">Submit</button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>