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
<a href="<c:url value="/status/list/"/>" >Status list</a>
<a href="<c:url value="/powertype/list/"/>">Power type list</a>
<a href="<c:url value="/category/list/"/>">Category list</a>
<a href="<c:url value="/manufacturer/list/"/>">Manufacturer list</a>
<a href="<c:url value="/location/list/"/>">Location list</a> <br>

<a href="<c:url value="/tool/add/"/>">Add new tool</a><br>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Model</th>
        <th>Manufacturer</th>
        <th>Category</th>
        <th>Power type</th>
        <th>Status</th>
        <th>Rating</th>
        <th>Storage location</th>
        <th>Created on</th>
        <th>Last update on</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${tools}" var="tool">
        <tr>
            <td>${tool.id}</td>
            <td>${tool.name}</td>
            <td>${tool.model}</td>
            <td>${tool.manufacturer.nameOfManufacturer}</td>
            <td>${tool.category.categoryName}</td>
            <td>${tool.powerType.powerType}</td>
            <td>${tool.status.status}</td>
            <td>${tool.rating}</td>
            <td>${tool.location.nameOfLocations}</td>
            <td>${tool.created}</td>
            <td>${tool.lastUpdate}</td>
            <td>
                <a href="<c:url value="/tool/edit/${tool.id}"/>">Edit</a>
                <c:if test="${tool.status.status == 'available'}">
                    <a href="<c:url value="/rental/rent/${tool.id}"/>" target="_blank">Rent</a>
                </c:if>
                <c:if test="${tool.status.status == 'rental'}">
                    <a href="<c:url value="/rental/return/${tool.id}"/>" target="_blank">Return</a>
                </c:if>


            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
