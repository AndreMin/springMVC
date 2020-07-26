<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!Doctype html>

<html>
<head>
    <title>Customer Registration Form</title>
    <style>
        .error {color: red}
    </style>
</head>
<body>
<i>Fill the form. * fields are required.</i>
<br><br>
<form:form action="processForm" modelAttribute="customer">
    First Name: <form:input path="firstName"/>
    <br><br>
    Last Name(*): <form:input path="lastName"/>
    <form:errors path="lastName" cssClass="error"/>
    <br><br>
    Free Passes: <form:input path="freePasses"/>
    <form:errors path="freePasses" cssClass="error"/>
    <br><br>
    <input type="submit" value="ClickIt">
</form:form>
</body>
</html>
