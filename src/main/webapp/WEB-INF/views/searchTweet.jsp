<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>Searched Tweets</title>
        <style>
            table {
                table-layout: fixed;
            }

            td {
                word-wrap: break-word
            }
        </style>
    </head>
    <body>

        <%@ include file="../parts/header.jspf" %>

        <h3>Searched Tweets</h3>

        <a href="javascript:history.back()">Go Back</a>

        <br><br>

        <div>
            <c:forEach items="${tweets}" var="tweet">

                <table border="2px" width="750px">

                    <tr>
                        <td>
                            <a href="/user/${tweet.user.username}"> ${tweet.user.username}</a>
                        </td>
                        <td>
                                ${tweet.created.format(dateTimeFormatter)}
                        </td>
                        <td>
                            <a href="/comment/add/${tweet.id}">Add Comment</a>
                        </td>
                        <td>
                            <a href="/tweet/${tweet.id}">Details</a>
                        </td>
                        <td>
                            <a href="/tweet/delete/${tweet.id}">Delete Tweet</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            <table>
                                <tr>
                                    <td>
                                            ${tweet.text}
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            <i>Comments</i>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            <table border="0.5px">
                                <c:forEach items="${tweet.comments}" var="comment">
                                    <tr>
                                        <td>
                                                ${comment.text}
                                        </td>
                                        <td>
                                            <a href="/user/${comment.user.username}">${comment.user.username}</a>
                                        </td>
                                        <td>
                                                ${comment.created.format(dateTimeFormatter)}
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </td>
                    </tr>
                </table>
                <br><br>

            </c:forEach>

        </div>

    </body>
</html>
