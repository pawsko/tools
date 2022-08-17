<%--
  Created by IntelliJ IDEA.
  User: pawsko
  Date: 02/08/2022
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit category</title>
</head>
<body>

<%--@elvariable id="category" type="pl.coderslab.tools.category.Category"--%>
<form:form modelAttribute="category" action="/category/edit">
    <form:hidden path="id"/> <br>
    Category: <form:input path="categoryName"/> <br>
    <input type="submit"/>
</form:form>

</body>
</html>
