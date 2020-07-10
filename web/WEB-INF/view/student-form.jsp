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
    Country:
    <%-- <form:select path="country">
         <form:option value="Brazil" label="Brazil"/>
         <form:option value="USA" label="USA"/>
         <form:option value="India" label="India"/>
         <form:option value="Ukraine" label="Ukraine"/>
     </form:select>--%>
    <%--    take countries from jaca class--%>
    <form:select path="country">
        <form:options items="${student.countryOpt}"></form:options>
    </form:select>
    <br><br>
    Favorite language:
    Java <form:radiobutton path="language" value="Java"/>
    JS <form:radiobutton path="language" value="JS"/>
    C# <form:radiobutton path="language" value="C#"/>
    PHP <form:radiobutton path="language" value="PHP"/>
    <br><br>

    Operating systems:
    Linux <form:checkbox path="operatingSystem" value="Linux"/>
    Mac OS <form:checkbox path="operatingSystem" value="Mac OS"/>
    MS Windows <form:checkbox path="operatingSystem" value="MS Windows"/>
    <br><br>

    <input type="submit" value="ClickOn">
</form:form>
</body>

</html>