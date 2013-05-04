<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="login.htm" method="post" commandName="userForm" id="user_form">
   User Name: <form:input path="name" />
   User Name: <form:password path="password" />
   <form:button>Submit</form:button>
</form:form>
</body>
</html>