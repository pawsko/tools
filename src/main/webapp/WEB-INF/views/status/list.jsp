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
    <title>Status list</title>
</head>
<body>
<%--@elvariable id="status" type="pl.coderslab.tools.status.Status"--%>
<a href="<c:url value="/tool/list/"/>">Tool list</a><br>
<a href="<c:url value="/status/add/"/>">Add new status</a>
<table>
    <tr>
        <th>Id</th>
        <th>Status</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${status}" var="status">
        <tr>
            <td>${status.id}</td>
            <td>${status.status}</td>
            <td>
                <a href="<c:url value="/status/edit/${status.id}"/>">Edit</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
