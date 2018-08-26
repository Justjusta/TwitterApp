<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>Send Message</title>
    </head>
    <body>

        <%@ include file="../parts/header.jspf"%>

        <h3>Send Message</h3>
        <a href="javascript:history.back()">Go Back</a>

        <br><br>

        <form:form method="post" modelAttribute="message">

            Text: <form:input path="text"/>

            <br><br>

            Receiver: <form:select itemLabel="username" itemValue="id" path="receiver.id" items="${users}"/>

            <br><br>

            <input type="submit" value="Send Message">

        </form:form>

    </body>
</html>
