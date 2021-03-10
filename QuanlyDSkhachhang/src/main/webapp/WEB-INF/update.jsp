
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/customers"><h3>back</h3></a>
<div align="center">
    <table border="" cellpadding="10">
        <label>
            Customer Update
        </label>

        <form:form method="post" modelAttribute="update">

            <form:hidden path="id"/>
            <tr>
                <th><label>Name:</label></th>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <th><label>Email:</label></th>
                <td><form:input path="email"/></td>
            </tr>
            <tr>
                <th><label>Address:</label></th>
                <td><form:input path="address"/></td>
            </tr>
            <tr>
                <th><label></label></th>
                <td><input type="submit" value="Update"></td>
            </tr>

        </form:form>
    </table>
</div>
</body>
</html>