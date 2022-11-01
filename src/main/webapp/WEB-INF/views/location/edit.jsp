<%--
  Created by IntelliJ IDEA.
  User: pawsko
  Date: 02/08/2022
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit locations</title>
</head>
<body>

<%--@elvariable id="location" type="pl.coderslab.tools.location.Location"--%>
<form:form modelAttribute="location" action="/location/edit">
    <form:hidden path="id"/> <br>
    Location: <form:input path="locationName"/> <br>
    <input type="submit"/>
</form:form>

</body>
</html>
