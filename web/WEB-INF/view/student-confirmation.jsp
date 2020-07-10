<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!Doctype html>
<html>
<head>
    <title>Student Confirmation Page</title>
</head>
<body>
The Student is confirmed: ${student.firstName} ${student.lastName}
<br><br>
The Student`s country is: ${student.country}
<br><br>
Student`s favorite language is: ${student.language}
<br><br>
Operating systems:

<ul>
    <c:forEach var="temp" items="${student.operatingSystem}">

        <li>${temp}</li>

    </c:forEach>
</ul>
<br><br>

</body>

</html>