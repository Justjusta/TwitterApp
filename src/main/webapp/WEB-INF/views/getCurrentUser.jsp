<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>User Account</title>
    </head>
    <body>

        <%@ include file="../parts/header.jspf"%>

        <h3>User Messages</h3>
        <a href="javascript:history.back()">Go Back</a>

        <br><br>

        <a href="/message/send">Send Message</a>

        <br><br>

        <a href="/message/received">Received Messages</a>

        <br><br>

        <a href="/message/sent">Sent Messages</a>

    </body>
</html>
