<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Жильцы</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="shortcut icon" href="../image/emblem.png">
    <link href="../css/index.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid menu">
        <div class="navbar-header">
            <a class="navbar-brand name" href="#" style="color: black">Metropol</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a>Бронь</a></li>
            <li class="active"><a href="${pageContext.request.contextPath}/controller?command=resident">Заселенные номера</a></li>
            <li><a href="${pageContext.request.contextPath}/controller?command=logout">Выход</a></li>
        </ul>
    </div>
</nav>
<div class="main">
<table class="table">
    <thead>
    <tr>
        <th>№ комнаты</th>
        <th>Количество мест</th>
        <th>Тип номера</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="resident" items="${resident}" varStatus="status">
        <tr>
            <td><c:out value="${resident.coast}" /></td>
            <td><c:out value="${resident.idOrder}" /></td>
            <td><c:out value="${ resident.numderRoom}" /></td>
            <td><a href="${pageContext.request.contextPath}/controller?command=deleteresident&id=${resident.idOrder}">Заселить</a></td>

        </tr>
    </c:forEach>
    </tbody>
</table>
</div>
</body>
</html>
