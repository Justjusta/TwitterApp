<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>Add Tweet</title>
    </head>
    <body>

        <%@ include file="../parts/header.jspf"%>

        <h3>Add Tweet</h3>
        <a href="javascript:history.back()">Go Back</a>

        <br><br>

        <form:form method="post" modelAttribute="tweet">

            Text: <form:input path="text"/>
            <form:errors path="text" cssClass="error"/>

            <br><br>

            <input type="submit" value="Add Tweet">

        </form:form>

    </body>
</html>
