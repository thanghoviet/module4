<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/add"><h3>Add</h3></a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th></th>
    </tr>
    <c:forEach items='${list}' var="i">
        <tr>
            <td>${i.id}</td>
            <td>${i.name}</td>
            <td>${i.email}</td>
            <td>${i.address}</td>
            <td>
                <a href="${pageContext.request.contextPath}/update?id=${i.id}">edit</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
