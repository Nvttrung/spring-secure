<%--
  Created by IntelliJ IDEA.
  User: rioka
  Date: 20-Jun-17
  Time: 8:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>Login form</h1>
    <form action="j_spring_security_check" method="post">
        Username:<input name="username" type="text"/><br>
        Password:<input name="password" type="password"/><br>
        <input type="submit" value="Login">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
    <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
        <p style="color: red";>
            Your login attempt was not successfull due to: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>
        </p>
    </c:if>
</body>
</html>
