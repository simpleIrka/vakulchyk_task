<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: igorg
  Date: 07.02.2018
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Аккаунт</title>
    <link rel="shortcut icon" href="../image/emblem.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link href="../css/index.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid menu">
        <div class="navbar-header">
            <a class="navbar-brand name" href="#" style="color: black">Metropol</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href>Аккаунт</a></li>
            <li><a href>Забронировать номер</a></li>
            <li><a href="${pageContext.request.contextPath}/controller?command=personorder&id=${id}">Просмотр брони</a></li>
            <li><a href="${pageContext.request.contextPath}/controller?command=logout">Выход</a></li>
        </ul>
    </div>
</nav>
<div class="main">
    <c:forEach var="client" items="${dataAboutClient}" varStatus="status">

        <c:out value="${ client.surname}" />
        <c:out value="${ client.name }" />
        <c:out value="${ client.login}" />
        <c:out value="${ client.phone}" />
        <c:out value="${client.discount}" />
        <c:out value="${ client.passportNumber }" />

    </c:forEach>
</div>
</body>
</html>
