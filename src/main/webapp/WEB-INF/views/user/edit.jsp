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
    <title>Edit user</title>
</head>
<body>

<%--@elvariable id="user" type="pl.coderslab.tools.user.User"--%>
<form:form modelAttribute="user" action="/user/edit">
    <form:hidden path="id"/>
    First name: <form:input path="firstName"/> <br>
    Last name: <form:input path="lastName"/> <br>
    Phone number: <form:input path="phoneNumber"/> <br>
    Email: <form:input path="email"/> <br>
    Rating: <form:input path="rating"/> <br>
    Created on: ${user.created} <form:hidden path="created"/> <br>
    Last update on: ${user.lastUpdate} <br>
    <input type="submit"/>
</form:form>

</body>
</html>
