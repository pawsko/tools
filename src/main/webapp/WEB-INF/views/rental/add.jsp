<%--
  Created by IntelliJ IDEA.
  User: pawsko
  Date: 02/08/2022
  Time: 21:22
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
<form:form modelAttribute="rental">
    <form:hidden path="id"/> <br>
    Tool:
    <form:select path="tool.id">
        <form:option value="NONE" label="--- Select ---"/>
        <c:forEach items="${tools}" var="tool">
            <form:option value="${tool.id}"><c:out value="${tool.id}. ${tool.name} ${tool.model} ${tool.manufacturer.nameOfManufacturer}"/></form:option>
        </c:forEach>
    </form:select><br>

    User:
    <form:select path="user.id">
        <form:option value="NONE" label="--- Select ---"/>
        <c:forEach items="${users}" var="user">
            <form:option value="${user.id}"><c:out
                    value="${user.id}. ${user.lastName} ${user.firstName}"/></form:option>
        </c:forEach>
    </form:select><br>

    Rented: <form:input path="rented" type="datetime-local"/> <br>
    Returned: <form:input path="returned" type="datetime-local"/> <br>
    Notices: <form:input path="notices"/> <br>
    <input type="submit"/>
</form:form>
</body>
</html>
