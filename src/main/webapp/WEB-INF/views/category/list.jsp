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
    <title>Categories</title>
</head>
<body>
<%--@elvariable id="category" type="pl.coderslab.tools.category.Category"--%>
<a href="<c:url value="/tool/list/"/>">Tool list</a><br>
<a href="<c:url value="/category/add/"/>">Add new category</a>
<table>
    <tr>
        <th>Id</th>
        <th>Category</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${categories}" var="category">
        <tr>
            <td>${category.id}</td>
            <td>${category.categoryName}</td>
            <td>
                <a href="<c:url value="/category/edit/${category.id}"/>">Edit</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
