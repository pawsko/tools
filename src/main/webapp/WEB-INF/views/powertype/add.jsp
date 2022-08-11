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
    <title>Add power type</title>
</head>
<body>
<%--@elvariable id="powertype" type="pl.coderslab.tools.powertype.PowerType"--%>
<form:form modelAttribute="powertype">
    <form:hidden path="id"/> <br>
    Power type: <form:input path="powerType"/> <br>
    <input type="submit"/>
</form:form>
</body>
</html>
