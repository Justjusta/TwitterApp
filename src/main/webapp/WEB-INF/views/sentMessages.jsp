<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>Sent Messages</title>
    </head>
    <body>

        <%@ include file="../parts/header.jspf"%>

        <h3>Sent Messages</h3>
        <a href="javascript:history.back()">Go Back</a>

        <br><br>

        <div>

            <table border="1px">

                <c:forEach items="${sentMessages}" var="message">
                    <tr>
                        <td>
                                ${message.receiver.username}
                        </td>
                        <td>
                                ${message.created.format(dateTimeFormatter)}
                        </td>
                    </tr>
                    <tr>
                        <td>
                                ${message.text}
                        </td>
                    </tr>

                </c:forEach>

            </table>

        </div>
    </body>
</html>
