<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>Add Comment</title>
    </head>
    <body>

        <%@ include file="../parts/header.jspf"%>

        <h3>Add Comment</h3>
        <a href="javascript:history.back()">Go Back</a>

        <br><br>

        <form:form method="post" modelAttribute="comment">

            Text: <form:input path="text"/>
            <form:errors path="text" cssClass="error"/>

            <br><br>

            <input type="hidden" value="${tweet.id}" name="${tweet}">
            <input type="submit" value="Add Comment">

        </form:form>

    </body>
</html>
