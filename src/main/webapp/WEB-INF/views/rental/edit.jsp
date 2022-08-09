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
    <title>Edit rental</title>
</head>
<body>

<%--@elvariable id="rental" type="pl.coderslab.tools.rental.Rental"--%>
<form:form modelAttribute="rental" action="/rental/edit">
    <form:hidden path="id"/> <br>
    Tool: <form:select path="tool" items="${tools}" itemLabel="name" itemValue="id"/> <br>
    User: <form:select path="user" items="${users}" itemLabel="lastName" itemValue="id"/> <br>
    Rented: <form:input path="rented" type="datetime-local"/> <br>
    Returned: <form:input path="returned" type="datetime-local"/> <br>
    Notices: <form:input path="notices"/> <br>
    <input type="submit"/>
</form:form>

</body>
</html>
