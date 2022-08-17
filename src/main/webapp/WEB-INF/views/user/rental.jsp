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
    <title>All rentals</title>
</head>
<body>
<%--@elvariable id="user" type="pl.coderslab.tools.rental.Rental"--%>
<a href="<c:url value="/user/list/"/>">User list</a>
<table>
    <tr>
        <th>Rental id</th>
        <th>Last name</th>
        <th>First name</th>
        <th>Tool name</th>
        <th>Tool model</th>
        <th>Tool brand</th>
        <th>Current tool status</th>
        <th>Rented</th>
        <th>Returned</th>
    </tr>
    <c:forEach items="${rentals}" var="rental">
        <tr>
            <td>${rental.id}</td>
            <td>${rental.user.lastName}</td>
            <td>${rental.user.firstName}</td>

            <td>${rental.tool.name} (id:${rental.tool.id})</td>
            <td>${rental.tool.model}</td>
            <td>${rental.tool.manufacturer.nameOfManufacturer}</td>
            <td>${rental.tool.status.status}</td>
            <td>${rental.rented}</td>
            <td>${rental.returned}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
