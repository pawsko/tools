<%--
  Created by IntelliJ IDEA.
  User: pawsko
  Date: 01/11/2022
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zaloguj się</title>
</head>
<body>
<div class="container">
    <h1 class="login-header">Zaloguj się</h1>
    <i class="fa-solid fa-lock fa-10x lock-icon"></i>
    <form class="login-form" action="${pageContext.request.contextPath}/login" method="post">
        <input name="username" placeholder="nazwa użytkownika" class="form-item">
        <input name="password" placeholder="hasło" type="password" class="form-item">
        <button type="submit" class="form-item">Zaloguj się</button>
    </form>
</div>

</body>
</html>
