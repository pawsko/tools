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
    <title>Add new tool</title>
</head>
<body>
<%--@elvariable id="tool" type="pl.coderslab.tools.tool.Tool"--%>
<form:form modelAttribute="tool">
    <form:hidden path="id"/> <br>
    Name: <form:input path="name"/> <br>
    Model: <form:input path="model"/> <br>

    Manufacturer:
    <form:select path="manufacturer.id">
        <form:option value="NONE" label="--- Select ---"/>
        <form:options items="${manufacturers}" itemLabel="nameOfManufacturer" itemValue="id"/>
    </form:select> <br>

    Category:
    <form:select path="category.id">
        <form:option value="NONE" label="--- Select ---"/>
        <form:options items="${categories}" itemLabel="categoryName" itemValue="id"/>
    </form:select> <br>

    Power type:
    <form:select path="powerType.id">
        <form:option value="NONE" label="--- Select ---"/>
        <form:options items="${powertype}" itemLabel="powerType" itemValue="id"/>
    </form:select> <br>

    Status:
    <form:select path="status.id">
        <form:option value="NONE" label="--- Select ---"/>
        <form:options items="${status}" itemLabel="status" itemValue="id"/>
    </form:select> <br>
    Rating: <form:input path="rating"/> <br>
    Storage location:
    <form:select path="location.id">
        <form:option value="NONE" label="--- Select ---"/>
        <form:options items="${locations}" itemLabel="nameOfLocations" itemValue="id"/>
    </form:select> <br>
    <input type="submit"/>
</form:form>
</body>
</html>
