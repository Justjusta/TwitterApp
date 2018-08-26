<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>Tweet Details</title>
    </head>
    <body>

        <%@ include file="../parts/header.jspf"%>

        <h3>Tweet Details</h3>
        <a href="javascript:history.back()">Go Back</a>

        <br><br>

        <table>
            <tr>
                <td>Text</td>
                <td>Created</td>
                <td>User</td>
            </tr>
            <tr>
                <td>${tweet.text}</td>
                <td>${tweet.created.format(dateTimeFormatter)}</td>
                <td><a href="/user/${tweet.user.username}"> ${tweet.user.username}</a></td>
                <td>
                    <a href="/comment/add/${tweet.id}">Add Comment</a>
                </td>
                <td>
                    <a href="/tweet/delete/${tweet.id}">Delete Tweet</a>
                </td>
            <tr>
                <td>
                    <table>

                        <c:forEach items="${tweet.comments}" var="comment">
                            <tr>
                                <td>
                                        ${comment.text}
                                    <a href="/user/${comment.user.username}"> ${comment.user.username}</a>
                                        ${comment.created.format(dateTimeFormatter)}
                                </td>
                            </tr>
                        </c:forEach>

                    </table>
                </td>
            </tr>
            </tr>
        </table>

    </body>
</html>
