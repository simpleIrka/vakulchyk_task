<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fmt:setLocale value="${locale}" scope="session" />
<fmt:setBundle basename="text"/>
<html>
<head>
    <title>Title</title>
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
            <li ><a href>Аккаунт</a></li>
            <li><a href="${pageContext.request.contextPath}/controller?command=openpage&page=addOrder">Забронировать номер</a></li>
            <li  class="active"><a href="${pageContext.request.contextPath}/controller?command=personorder&id=${id}">Просмотр брони</a></li>
            <li><a href="${pageContext.request.contextPath}/controller?command=logout">Выход</a></li>
        </ul>
    </div>
</nav>
<div>
    <div class="main">
        <table class="table">
            <thead>
            <tr>
                <th>Кол-во</th>
                <th>Тип номера</th>
                <th>Длительность остановки</th>
                <th>Дата заселения</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="order" items="${personOrderList}" varStatus="status">
                <tr>
                    <td><c:out value="${order.numberSeats}" /></td>
                    <td><c:out value="${ order.typeApartment}" /></td>
                    <td><c:out value="${order.timeStay}" /></td>
                    <td><c:out value="${ order.dataArrival }" /></td>
                </tr>

            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
