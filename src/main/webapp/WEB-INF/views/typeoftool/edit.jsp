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
    <title>Edit type of tool</title>
</head>
<body>

<%--@elvariable id="typeoftool" type="pl.coderslab.tools.typesoftools.TypesOfTools"--%>
<form:form modelAttribute="typeoftool" action="/typeoftool/edit">
    <form:hidden path="id"/> <br>
    Type of tool: <form:input path="typeOfTool"/> <br>
    <input type="submit"/>
</form:form>

</body>
</html>
