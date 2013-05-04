<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
</head>
<body>
	<form:form action="register.htm" method="post" commandName="user"
		id="user_form">
   		 User Name: <form:input path="name" /><br/>
   		 Password: <form:password path="password" /><br/>
   		 Email: <form:input path="email" /><br/>
      	 National ID: <form:input path="nId" /><br/>
         Occupation: <form:input path="occupation" /><br/>
         Nationality: <form:input path="nationality" /><br/>
         Designation: <form:input path="designation" /><br/>
		<form:button>Submit</form:button>
	</form:form>
</body>
</html>