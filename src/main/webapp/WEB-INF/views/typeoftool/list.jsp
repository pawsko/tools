<%--
  Created by IntelliJ IDEA.
  User: pawsko
  Date: 02/08/2022
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Types of tools</title>
</head>
<body>
<%--@elvariable id="typeoftool" type="pl.coderslab.tools.typesoftools.TypesOfTools"--%>
<a href="<c:url value="/typeoftool/add/"/>">Add new type of tool</a>
<table>
    <tr>
        <th>Id</th>
        <th>Type of tool</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${typesoftools}" var="typeoftool">
        <tr>
            <td>${typeoftool.id}</td>
            <td>${typeoftool.typeOfTool}</td>
            <td>
                <a href="<c:url value="/typeoftool/edit/${typeoftool.id}"/>">Edit</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
