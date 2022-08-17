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
    <title>Add status of tool</title>
</head>
<body>
<%--@elvariable id="status" type="pl.coderslab.tools.status.Status"--%>
<form:form modelAttribute="status">
    <form:hidden path="id"/> <br>
    Status: <form:input path="status"/> <br>
    <input type="submit"/>
</form:form>
</body>
</html>
