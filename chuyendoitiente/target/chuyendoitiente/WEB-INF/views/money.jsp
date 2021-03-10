<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add</title>
</head>
<body>
<div align="center">
    <table  cellpadding="10">
        <label>
            Convert Money
        </label>

        <form:form method="post" modelAttribute="money">
            <tr>
                <th><label>USD:</label></th>
                <td><form:input type="number" step="0.01" min="0" path="USD"/></td>
            </tr>
            <tr>
                <th><label>VND:</label></th>
                <td><form:input type="number" min="0" path="VND"/></td>
            </tr>
            <tr>
                <th><label></label></th>
                <td><input type="submit" value="Convert"></td>
            </tr>
        </form:form>
    </table>
</div>
</body>
</html>