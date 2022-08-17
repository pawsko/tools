<%--
  Created by IntelliJ IDEA.
  User: pawsko
  Date: 02/08/2022
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add location</title>
</head>
<body>
<%--@elvariable id="location" type="pl.coderslab.tools.location.Location"--%>
<form:form modelAttribute="location">
    <form:hidden path="id"/> <br>
    <%--    Location: <form:select path="" items="${location}" itemLabel="nameOfLocations" itemValue="id"/> <br>--%>
    Location: <form:input path="nameOfLocations"/> <br>
    <%--    Rented: <form:input path="rented"/> <br>--%>
    <%--    Returned: <form:input path="returned"/> <br>--%>

    <input type="submit"/>
</form:form>
</body>
</html>
