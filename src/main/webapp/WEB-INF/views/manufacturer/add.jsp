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
    <title>Add new manufacturer</title>
</head>
<body>
<%--@elvariable id="manufacturer" type="pl.coderslab.tools.manufacturer.Manufacturer"--%>
<form:form modelAttribute="manufacturer">
    <form:hidden path="id"/> <br>
    Manufacturer: <form:input path="nameOfManufacturer"/> <br>
    <input type="submit"/>
</form:form>
</body>
</html>
