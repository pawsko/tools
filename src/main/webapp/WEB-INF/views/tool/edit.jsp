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
    <title>Edit tool</title>
</head>
<body>

<%--@elvariable id="tool" type="pl.coderslab.tools.tool.Tool"--%>
<form:form modelAttribute="tool" action="/tool/edit">
    <form:hidden path="id"/> <br>
    Name: <form:input path="name"/> <br>
    Model: <form:input path="model"/> <br>
    Manufacturer: <form:select path="manufacturer.id" items="${manufacturers}" itemLabel="nameOfManufacturer" itemValue="id"/> <br>
    Category: <form:select path="category.id" items="${categories}" itemLabel="categoryName" itemValue="id"/> <br>
    Power type: <form:select path="powerType.id" items="${powertype}" itemLabel="powerType" itemValue="id"/> <br>
    Status: <form:select path="status.id" items="${status}" itemLabel="status" itemValue="id"/> <br>
    Rating: <form:input path="rating"/> <br>
    Storage location: <form:select path="location.id" items="${locations}" itemLabel="nameOfLocations" itemValue="id"/> <br>
    Created on: ${tool.created} <form:hidden path="created"/> <br>
    Last update on: ${tool.lastUpdate} <br>
    <input type="submit"/>
</form:form>

</body>
</html>
