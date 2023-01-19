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
    <title>Rent new tool</title>
</head>
<body>
<%--@elvariable id="rental" type="pl.coderslab.tools.rental.Rental"--%>
<form:form modelAttribute="rental" action="/rental/rent">
    <%--    <form:hidden path="id"/> <br>--%>
    <form:hidden path="tool.id" value="${tool.id}"/>
    Rent tool: ${tool.name} ${tool.model} ${tool.manufacturer.manufacturerName} (id:${tool.id})<br>

    User:
    <form:select path="user.id">
        <form:option value="NONE" label="--- Select ---"/>
        <c:forEach items="${users}" var="user">
            <form:option value="${user.id}"><c:out
                    value="${user.lastName} ${user.firstName} (id:${user.id})"/>
            </form:option>
        </c:forEach>
    </form:select><br>

    Notices: <form:input path="notices"/> <br>
    <input type="submit"/>
</form:form>
</body>
</html>
