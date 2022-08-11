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
    <title>Locations</title>
</head>
<body>
<%--@elvariable id="rental" type="pl.coderslab.tools.location.Location"--%>
<a href="<c:url value="/location/add/"/>">Add new location</a>
<table>
    <tr>
        <th>Id</th>
        <th>Location</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${locations}" var="location">
        <tr>
            <td>${location.id}</td>
            <td>${location.nameOfLocations}</td>
            <td>
                <a href="<c:url value="/location/edit/${location.id}"/>">Edit</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
