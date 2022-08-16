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
    <title>Add new client</title>
</head>
<body>
<%--@elvariable id="user" type="pl.coderslab.tools.user.User"--%>
<form:form modelAttribute="user">
    <form:hidden path="id"/> <br>
    First name: <form:input placeholder="first name" path="firstName"/> <br>
    Last name: <form:input placeholder="last name" path="lastName"/> <br>
    Phone number: <form:input type="tel" placeholder="123-456-789" pattern="[0-9]{3}-[0-9]{3}-[0-9]{3}" path="phoneNumber"/> <br>
    Email: <form:input type="email" placeholder="email@email.com" path="email" /> <br>
    Rating: <form:input type="number" min="0" max="10" path="rating"/> <br>
    <input type="submit"/>
</form:form>
</body>
</html>
