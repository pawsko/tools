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
    <title>Rent new tool</title>
</head>
<body>
<%--@elvariable id="rental" type="pl.coderslab.tools.rental.Rental"--%>
<form:form modelAttribute="rental">
    <form:hidden path="id"/> <br>
    Tool: <form:select path="tool" items="${tools}" itemLabel="name" itemValue="id"/> <br>
    User: <form:select path="user" items="${users}" itemLabel="lastName" itemValue="id"/> <br>

<%--    Rented: <form:input path="rented"/> <br>--%>
<%--    Returned: <form:input path="returned"/> <br>--%>

    Rented: <form:input path="rented" type="datetime-local"/> <br>
    Returned: <form:input path="returned" type="datetime-local"/> <br>
    Notices: <form:input path="notices"/> <br>
    <input type="submit"/>
</form:form>
</body>
</html>
