<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>Message</title>
    </head>
    <body>

        <%@ include file="../parts/header.jspf"%>

        <h3>Message</h3>
        <a href="javascript:history.back()">Go Back</a>

        <br><br>

        ${message.sender.username}
        ${message.created.format(dateTimeFormatter)}
        <br>
        ${message.text}

    </body>
</html>
