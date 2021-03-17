<%--
  Created by IntelliJ IDEA.
  User: Thang.HoViet
  Date: 3/15/2021
  Time: 3:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Mailboxes</title>
</head>
<body>
<form:form method="POST" modelAttribute="mailboxes" action="mailboxes">
    <table>
        <tr>
            <td>
                <form:label path="languages">Language :</form:label>
            </td>
            <td>
                <form:select path="languages">
                    <form:option value="English" />
                    <form:option value="Vietnamese" />
                    <form:option value="Japanese" />
                    <form:option value="Chinese" />
                </form:select>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="size">Size :</form:label>
            </td>
            <td>
                Show <form:select path="size">
                    <form:option value="5"/>
                    <form:option value="10"/>
                    <form:option value="20"/>
                    <form:option value="25"/>
                    <form:option value="50"/>
                    <form:option value="100"/>
            </form:select>Enable spams filter
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="spamsFilter">Spams Filter</form:label>
            </td>
            <td>
                <form:checkbox path="spamsFilter"/>
                Enable Spams filter
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="signature">Signature :</form:label>
            </td>
            <td>
                <form:textarea path="signature" cols="100" />
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="submit"/>
            </td>

        </tr>
    </table>
</form:form>
</body>
</html>
