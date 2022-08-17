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
    <title>Power types</title>
</head>
<body>
<%--@elvariable id="powertype" type="pl.coderslab.tools.powertype.PowerType"--%>
<a href="<c:url value="/tool/list/"/>">Tool list</a><br>
<a href="<c:url value="/powertype/add/"/>">Add new power type</a>
<table>
    <tr>
        <th>Id</th>
        <th>Power type</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${powetypes}" var="powertype">
        <tr>
            <td>${powertype.id}</td>
            <td>${powertype.powerType}</td>
            <td>
                <a href="<c:url value="/powertype/edit/${powertype.id}"/>">Edit</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
