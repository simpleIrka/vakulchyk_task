<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Бронь</title>
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
            <li class="active"><a>Бронь</a></li>
            <li><a href>Заселенные номера</a></li>
            <li><a href="${pageContext.request.contextPath}/controller?command=logout">Выход</a></li>
        </ul>
    </div>
</nav>
<div class="main">
    <table class="table">
        <thead>
        <tr>
            <th>№ Брони</th>
            <th>Фамилия</th>
            <th>Количество мест</th>
            <th>Тип номера</th>
            <th>Длительность остановки</th>
            <th>Дата заселения</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="order" items="${orderList}" varStatus="status">
            <tr>
                <td><c:out value="${order.idOrder}" /></td>
                <td><c:out value="${order.numberSeats}" /></td>
                <td><a href="${pageContext.request.contextPath}/controller?command=infoClient&id=${order.idClient}"><c:out value="${ order.idClient}" /></a></td>
                <td><c:out value="${ order.typeApartment}" /></td>
                <td><c:out value="${order.timeStay}" /></td>
                <td><c:out value="${ order.dataArrival }" /></td>
                <td><a href="${pageContext.request.contextPath}/controller?command=list">Заселить</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
