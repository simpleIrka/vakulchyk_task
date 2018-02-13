<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setLocale value="${locale}" scope="session" />
<fmt:setBundle basename="text"/>

<html>
<head>
    <title>Регистрация</title>
    <link rel="shortcut icon" href="../image/emblem.png">
    <link rel="stylesheet" type="text/css" href="../css/index.css">

</head>
<body>
<div class="header"></div>
<div class="main">
    <form name="registration" method="POST" action="controller">
        <input type="hidden" name="command" value="registration"/>
        <p>
            <b>Ваша фамилия:</b><span class="reqiured">*</span>
            <br>
            <input type="text" class="form-control" name="surname" size="15"/>
        </p>
        <p>
            <b>Ваше имя:</b><span class="reqiured">*</span>
            <br>
            <input type="text" class="form-control" name="name" size="15"/>
        </p>
        <p>
            <b>Номер телефона:</b><span class="reqiured">*</span>
            <br>
            <input type="text" class="form-control" name="phone" size="15"/>
        </p>
        <p>
            <b>Паспортные данные:</b><span class="reqiured">*</span>
            <br>
            <input type="text" class="form-control" name="passportNumber" size="15"/>
        </p>
        <p>
            <b>Логин:</b><span class="reqiured">*</span>
            <br>
            <input type="text" class="form-control" name="login" size="15"/>
        </p>
        <p>
            <b>Пароль:</b><span class="reqiured">*</span>
            <br>
            <input type="password" class="form-control" name="password" size="15"/>
        </p>
        <p>
            <b>Повторите пароль:</b><span class="reqiured">*</span>
            <br>
            <input type="password" class="form-control" name="secondPassword" size="15"/>
        </p>

        <br>
        <p class="info">
            <span class="reqiured">*</span> - поля обязательные для заполнения
        </p>
        <br>
        <input type="submit" value=<fmt:message key="registration"/>>
    </form>

</div>
<div class="footer centerText">
    <fmt:message key="change.language"/>
    <a href="${pageContext.request.contextPath}/controller?command=language&lang=ru_RU&page=registration">Ru</a>
    <a href="${pageContext.request.contextPath}/controller?command=language&lang=by_BY&page=registration">By</a>
    <a href="${pageContext.request.contextPath}/controller?command=language&lang=en_EN&page=registration">Eng</a>
</div>
</body>
</html>
