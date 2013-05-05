<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
<link rel="stylesheet" href="/ManagementProject/css/FormValidation.css">
<script type="text/javascript"
	src="/ManagementProject/js/jquery-1.9.1.js"></script>
<script type="text/javascript"
	src="/ManagementProject/js/FormValidation.js"></script>
	
</head>
<body>
	<c:if test="${success == 'success'}">
       <script>
       showAlert();
       </script> 
	</c:if>
	<form:form  method="post" commandName="user"
		id="regForm">
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
						label="Male" /> <form:radiobutton name="gender" path="gender"
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
				<td><input type="reset" value="CLEAR" id="reset" /></td>
				<td><input type="button" id = "subbutton" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>