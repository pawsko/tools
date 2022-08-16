<%--
  Created by IntelliJ IDEA.
  User: pawsko
  Date: 12/08/2022
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Return tool</title>
</head>
<body>
<%--@elvariable id="rental" type="pl.coderslab.tools.rental.Rental"--%>

<form:form modelAttribute="rental" action="/rental/return">
    <%--    <form:hidden path="id"/> <br>--%>
    <form:hidden path="id"/>
    <form:hidden path="tool.id" value="${rental.tool.id}"/>
    Return tool: ${tool.name} ${tool.model} ${tool.manufacturer.nameOfManufacturer} (id:${tool.id})<br>
    <form:hidden path="rented" value="${rental.rented}"/>
    Rented: ${rental.rented}<br>
    <form:hidden path="user.id" value="${rental.user.id}"/>
    By user: ${user.lastName} ${user.firstName} (id:${user.id})<br>
    Notices: <form:input path="notices" value="brak"/> <br>
    <input type="submit"/>
</form:form>
</body>
</html>
