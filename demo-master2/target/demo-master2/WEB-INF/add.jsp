<%--
  Created by IntelliJ IDEA.
  User: Thang.HoViet
  Date: 3/10/2021
  Time: 11:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" action="/doadd" modelAttribute="cus">
    <label>name</label>
    <form:input path="name"></form:input>
    <input type="submit" value="add">
</form:form>
</body>
</html>
