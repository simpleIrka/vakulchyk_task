<%--
  Created by IntelliJ IDEA.
  User: igorg
  Date: 06.02.2018
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Регистрация</title>
    <link rel="shortcut icon" href="../image/emblem.png">
    <link rel="stylesheet" type="text/css" href="../css/index.css">

</head>
<body>
<div class="header"></div>
<div class="main">
    <form name="LoginForm" method="POST" action="controller">
        <input type="hidden" name="command" value="Registration"/>
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
        <input class="for" type="submit" name="sendData" value="Отправить анкету">

        <input class="for" type="reset" name="reset" value="Очистить форму">

    </form>

</div>
<div class="footer"></div>


</body>
</html>
