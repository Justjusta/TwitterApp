<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>Received Messages</title>
    </head>
    <body>

        <%@ include file="../parts/header.jspf"%>

        <h3>Received Messages</h3>
        <a href="javascript:history.back()">Go Back</a>

        <br><br>

        <div>

            <table border="1px">

                <c:forEach items="${receivedMessages}" var="message">
                    <tr>
                        <td>
                                ${message.sender.username}
                        </td>
                        <td>
                                ${message.created.format(dateTimeFormatter)}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <c:choose>
                                <c:when test="${message.status == false}">
                                    ${message.text}
                                </c:when>
                                <c:when test="${message.status == true}">
                                    <b>${message.text}</b>
                                </c:when>
                            </c:choose>
                        </td>
                        <td>
                            <a href="/message/${message.id}">Read</a>
                        </td>
                    </tr>

                </c:forEach>

            </table>

        </div>


    </body>
</html>
