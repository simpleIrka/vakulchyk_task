<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib uri="/WEB-INF/taglib.tld" prefix="tag"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Подать заявку</title>
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
            <li><a href>Аккаунт</a></li>
            <li  class="active"><a href="${pageContext.request.contextPath}/controller?command=openpage&page=addOrder">Забронировать номер</a></li>
            <li><a href="${pageContext.request.contextPath}/controller?command=personorder&id=${id}">Просмотр брони</a></li>
            <li><a href="${pageContext.request.contextPath}/controller?command=logout">Выход</a></li>
        </ul>
    </div>
</nav>
<div class="main">
    <tag:greetings login="${idPerson}" />
    <form name="registration" method="POST" action="controller">
        <input type="hidden" name="command" value="addorder"/>
        <p>
            <b>Тип апартаментов:</b><span class="reqiured">*</span>
            <br>
            <Br>
            <label><input type="checkbox" name="typeApartment" value="lux">Люкс</label>
            <Br>
            <label><input type="checkbox" name="typeApartment" value="junior suite">Полулукс</label>
            <Br>
            <label><input type="checkbox" name="typeApartment" value="economy">Эконом</label>
            <Br>
        </p>
        <p>
            <b>Ваше время остановки:</b><span class="reqiured">*</span>
            <br>
            <input type="text" class="form-control" name="time" size="15"/>
        </p>
        <p>
            <b>Количество мест:</b><span class="reqiured">*</span>
            <br>
            <input type="text" class="form-control" name="numberSeats" size="15"/>
        </p>
        <p>
            <b>Дата заселения:</b><span class="reqiured">*</span>
            <br>
            <input type="date" class="form-control" name="data">
        </p>
        <br>
        <p class="info">
            <span class="reqiured">*</span> - поля обязательные для заполнения
        </p>
        <br>
        <input type="submit" value=<fmt:message key="registration"/>>
    </form>
</div>
</body>
</html>
