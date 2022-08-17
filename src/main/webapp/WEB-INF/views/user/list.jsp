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
    <title>Users</title>
</head>
<body>
<%--@elvariable id="user" type="pl.coderslab.tools.user.User"--%>
<a href="<c:url value="/user/add/"/>">Add new user</a>
<table>
    <tr>
        <th>Id</th>
        <th>Last name</th>
        <th>First name</th>
        <th>Phone number</th>
        <th>Email</th>
        <th>Rating</th>
        <th>Created on</th>
        <th>Last update on</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.lastName}</td>
            <td>${user.firstName}</td>
            <td>${user.phoneNumber}</td>
            <td>${user.email}</td>
            <td>${user.rating}</td>
            <td>${user.created}</td>
            <td>${user.lastUpdate}</td>
            <td>
                <a href="<c:url value="/user/edit/${user.id}"/>">Edit</a>
                <a href="<c:url value="/user/rental/${user.id}"/>">List all rentals</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
