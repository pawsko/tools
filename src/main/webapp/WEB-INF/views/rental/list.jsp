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
    <title>Rentals list</title>
</head>
<body>
<%--@elvariable id="rental" type="pl.coderslab.tools.rental.Rental"--%>
<a href="<c:url value="/rental/add/"/>">Rent new tool</a>
<table>
    <tr>
        <th>Id</th>
        <th>Tool</th>
        <th>User</th>
        <th>Rented</th>
        <th>Returned</th>
        <th>Notices</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${rentals}" var="rental">
        <tr>
            <td>${rental.id}</td>
            <td>${rental.tool.name} ${rental.tool.model}</td>
            <td>${rental.user.lastName} ${rental.user.firstName}</td>
            <td>${rental.rented}</td>
            <td>${rental.returned}</td>
            <td>${rental.notices}</td>
            <td>
                <a href="<c:url value="/rental/edit/${rental.id}"/>">Edit</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
