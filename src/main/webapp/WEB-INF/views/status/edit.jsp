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
    <title>Edit status</title>
</head>
<body>

<%--@elvariable id="status" type="pl.coderslab.tools.status.Status"--%>
<form:form modelAttribute="status" action="/status/edit">
    <form:hidden path="id"/> <br>
    Status: <form:input path="statusName"/> <br>
    <input type="submit"/>
</form:form>

</body>
</html>
