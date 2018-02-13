<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setLocale value="${locale}" scope="session" />
<fmt:setBundle basename="text"/>
<head>
    <meta charset="UTF-8">
    <title>Авторизация</title>
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
            <li><a href="${pageContext.request.contextPath}/views/main.jsp">Главная</a></li>
            <li ><a href="${pageContext.request.contextPath}/views/fotoPage.jsp">Фотогалерея</a></li>
            <li><a href="${pageContext.request.contextPath}/views/roomPage.jsp">Номера</a></li>
            <li><a href="${pageContext.request.contextPath}/views/infoPage.jsp">Инфо</a></li>
            <li class="active"><a href="${pageContext.request.contextPath}/views/authorization.jsp">Авторизация</a></li>
        </ul>
    </div>
</nav>
<div class="header">
    <fmt:message key="login.autorization" />
</div>
<div class="container-fluid ballet-body">
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <form name="LoginForm" method="POST" action="controller">
                    <input type="hidden" name="command" value="LOGIN"/>
                    <div class="form-group ">
                        <p>
                            <b>
                                <fmt:message key="login" />
                            </b><span class="reqiured">*</span>
                            <br>
                            <input type="text" class="form-control" name="login" size="15"/>
                        </p>
                        <p>
                            <b>
                                <fmt:message key="password" />
                            </b><span class="reqiured">*</span>
                            <br>
                            <input type="password" class="form-control" name="password" size="15"/>
                        </p>
                    </div>
                    <br>
                    <p class="info">
                        <span class="reqiured">*</span> - <fmt:message key="info" />
                    </p>
                    <br>
                    <input type="submit" value=<fmt:message key="entry"/>>
                    <button type="submit" name ="registrationpage" value=<fmt:message key="registration"/>
                    <br/>
                    ${errorLoginPassMessage}
                    <br/>
                    ${wrongAction}
                    <br/>
                    ${nullPage}
                    <br/>
                </form>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
</div>
<div class="footer centerText">
    <fmt:message key="change.language"/>
    <a href="${pageContext.request.contextPath}/controller?command=language&lang=ru_RU&page=login">Ru</a>
    <a href="${pageContext.request.contextPath}/controller?command=language&lang=by_BY&page=login">By</a>
    <a href="${pageContext.request.contextPath}/controller?command=language&lang=en_EN&page=login">Eng</a>
   </div>

</body>
