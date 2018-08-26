<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>User Details</title>
    </head>
    <body>

        <%@ include file="../parts/header.jspf"%>

        <h3>User Details</h3>
        <a href="javascript:history.back()">Go Back</a>

        <br><br>

        ${user.username}
        ${user.email}

    </body>
</html>
