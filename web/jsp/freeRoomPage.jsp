<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: igorg
  Date: 10.02.2018
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="shortcut icon" href="../image/emblem.png">
    <link href="../css/index.css" rel="stylesheet">
</head>
<body>
<div class="main">

    <table class="table">
        <thead>
        <tr>
            <th>№ комнаты</th>
            <th>Количество мест</th>
            <th>Тип номера</th>
            <th>Стоимость</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="room" items="${freeRoom}" varStatus="status">
            <tr>
                <td><c:out value="${room.number}" /></td>
                <td><c:out value="${room.numberSeats}" /></td>
                <td><c:out value="${ room.typeApartment}" /></td>
                <td><c:out value="${room.cost}" /></td>
                <td><a href="${pageContext.request.contextPath}/controller?command=list&roomNum=${room.number}&id=${idOrder}">Заселить</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
