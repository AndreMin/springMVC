<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!Doctype html>

<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>
<form:form action="processForm" modelAttribute="student">

    First Name: <form:input path="firstName"/>
    <br><br>

    Last Name: <form:input path="lastName"/>
    <br><br>
    <input type="submit" value="ClickOn">
</form:form>
</body>

</html>