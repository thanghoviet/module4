
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/customers"><h3>back</h3></a>
<div align="center">
    <table  cellpadding="10">
        <label>
            Customer Add
        </label>

        <form:form method="post" modelAttribute="add">
            <tr>
                <th><label>Id:</label></th>
                <td><form:input path="id"></form:input></td>
            </tr>
            <tr>
                <th><label>Name:</label></th>
                <td><form:input path="name"></form:input></td>
            </tr>
            <tr>
                <th><label>Email:</label></th>
                <td><form:input path="email"></form:input></td>
            </tr>
            <tr>
                <th><label>Address:</label></th>
                <td><form:input path="address"></form:input></td>
            </tr>
            <tr>
                <th><label></label></th>
                <td><input type="submit" value="Add"></td>
            </tr>
        </form:form>
    </table>
</div>
</body>
</html>