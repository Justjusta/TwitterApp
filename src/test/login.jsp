<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>Log In / Register</title>
    </head>
    <body>

        <div>
            <c:if test="${param.loggedout != null}">
                <h3>Logged Out</h3>
            </c:if>
        </div>
        <div>
            <h3>Log In</h3>
            <div>
                <c:if test="${param.error != null}">
                    <h3>Wrong Log In Parameters</h3>
                </c:if>
            </div>
            <form method="post" action="/login">
                <input type="text" name="username" placeholder="Username...">
                <input type="password" name="password" placeholder="Password...">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="submit" value="Log In">
            </form>
        </div>

        <div>
            <h3>Register</h3>
            <form:form method="post" action="/register" modelAttribute="user">
                <form:input path="username" placeholder="Username"/>
                <form:input path="email" placeholder="Email"/>
                <form:input type="password" path="password" placeholder="Password"/>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="submit" value="Register">
            </form:form>
        </div>

    </body>
</html>
