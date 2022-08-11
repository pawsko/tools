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
    <title>Tools</title>
</head>
<body>
<%--@elvariable id="tool" type="pl.coderslab.tools.tool.Tool"--%>
<a href="<c:url value="/tool/add/"/>">Add new tool</a>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Model</th>
        <th>Manufacturer</th>
        <th>Category</th>
        <th>Type</th>
        <th>Power type</th>
        <th>Status</th>
        <th>Rating</th>
        <th>Storage location</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${tools}" var="tool">
        <tr>
            <td>${tool.id}</td>
            <td>${tool.name}</td>
            <td>${tool.model}</td>
            <td>${tool.manufacturer.nameOfManufacturer}</td>
            <td>${tool.category}</td>
            <td>${tool.type}</td>
            <td>${tool.powerType}</td>
            <td>${tool.status}</td>
            <td>${tool.rating}</td>
            <td>${tool.location.nameOfLocations}</td>
            <td>
                <a href="<c:url value="/tool/edit/${tool.id}"/>">Edit</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
