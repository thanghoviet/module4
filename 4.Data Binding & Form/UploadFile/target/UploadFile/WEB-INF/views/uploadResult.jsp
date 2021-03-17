<%--
  Created by IntelliJ IDEA.
  User: Thang.HoViet
  Date: 3/15/2021
  Time: 10:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>

    <meta charset="UTF-8">

    <title>Upload Result</title>

</head>

<body>

<jsp:include page="_menu.jsp"/>

<h3>Uploaded Files:</h3>

Description: ${description}

<br/>

<c:forEach items="${uploadedFiles}" var="file">
    <img src="//+ ${file}" alt="img"><br>
    - ${file} <br>

</c:forEach>

</body>

</html>
