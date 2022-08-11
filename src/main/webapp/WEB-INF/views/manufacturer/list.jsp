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
    <title>List of all manufacturers</title>
</head>
<body>
<%--@elvariable id="manufactorer" type="pl.coderslab.tools.manufacturer.Manufacturer"--%>
<a href="<c:url value="/manufacturer/add/"/>">Add new manufacturers</a>
<table>
    <tr>
        <th>Id</th>
        <th>Manufacturer</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td>${manufacturer.id}</td>
            <td>${manufacturer.nameOfManufacturer}</td>
            <td>
                <a href="<c:url value="/manufacturer/edit/${manufacturer.id}"/>">Edit</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
