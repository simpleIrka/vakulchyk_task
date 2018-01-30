<<<<<<< HEAD:web/WEB-INF/views/infoPage.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<head>
  <title>Metropol</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="flowplay/flowplayer-3.2.2.min.js"></script>
  <link href="../css/index.css" rel="stylesheet">
  <style>
    body {
      background-color: #F5F5F5;
      margin-top: 70px;
      font-size: medium;
      font-family: Cambria;

    }

    .ballet-body {
      padding: 30px;
    }

    .text-body {
      padding: 30px;

    }
    .departments{
      text-align:  center;
      padding: 40px;
    }
    h1{
      text-align:  center;
    }
    .centerText{
      text-align: center;
    }
    .department{
      position: relative;
      display: inline-block;
      overflow: hidden;
      background-color: rgba(1,0,1,0.33);
      border-radius: 10px;

    }
    .left1{
      position: relative;
      left:10px;
      padding-top: 40px;
      margin-right: 600px;
    }


    .navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:focus, .navbar-inverse .navbar-nav>.active>a:hover {
      color: #fff;
      background-color: darkmagenta;
    }
    .navbar-inverse .navbar-nav>li>a {
      color: black;
      font-family: Cambria;
      font-weight: 600; /* Жирное начертание */
    }
    .name{
      font-family: Cambria;
      font-weight: 600; /* Жирное начертание */
    }
    .ballet-form > .row {
      margin: 20px 0px;
    }
    .menu{
      background-color: #828282;
      color: #FFE7BA;
    }

    span{
      color: rgba(13, 61, 147, 0.7);
      width: 50%;
      font-family: Gisha;
      font-size: 20px;
    }

  </style>

</head>
<body style="height:auto">

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid menu">
    <div class="navbar-header">
      <a class="navbar-brand name" href="#" style="color: black">Metropol</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="${pageContext.request.contextPath}/main">Главная</a></li>
      <li ><a href="${pageContext.request.contextPath}/foto">Фотогалерея</a></li>
      <li><a href="${pageContext.request.contextPath}/room">Номера</a></li>
      <li><a href="${pageContext.request.contextPath}/info">Инфо</a></li>
      <li><a href="${pageContext.request.contextPath}/authorization">Авторизация</a></li>
    </ul>
  </div>
</nav>
<div class="container-fluid ballet-body">
  <div class="jumbotron" style=" font-weight: 600; text-align:  center;">
   <em> Вы можете связаться с нами по указанным ниже телефонам или электронной почте или заполнив контактную форму. Мы с нетерпением ждем возможности лично приветствовать вас в нашем отеле.
   </em>
  </div>
</div>
<div class="container-fluid departments">
<!--<div class="departments">-->
<div class="department">

  <p>ОТДЕЛ БРОНИРОВАНИЯ</p>
  <p>ТЕЛ. +7 495 545 53 00</p>
  <p>RES@METMOS.RU</p>

</div>
<div class="department">

  <p>ОТДЕЛ ПРОДАЖ </p>
  <p>ТЕЛ. +7 495 153 47 13</p>
  <p>SALES@METMOS.RU</p>

</div>
<div class="department">

  <p>ОТДЕЛ СВЯЗЕЙ </p>
  <p>ТЕЛ. +7 495 153 47 13</p>
  <p>PR@METMOS.RU</p>

</div>
</div>
<div class="left1">
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2245.005268647496!2d37.619661415524625!3d55.75841068055483!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46b54a5b0aebf949%3A0x31b6f778d42395d5!2z0J7RgtC10LvRjCDQnNC10YLRgNC-0L_QvtC70Yw!5e0!3m2!1sru!2sby!4v1513724257854" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>



</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<head>
  <title>Metropol</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="flowplay/flowplayer-3.2.2.min.js"></script>
  <link href="../css/index.css" rel="stylesheet">
  <style>
    body {
      background-color: #F5F5F5;
      margin-top: 70px;
      font-size: medium;
      font-family: Cambria;

    }

    .ballet-body {
      padding: 30px;
    }

    .text-body {
      padding: 30px;

    }
    .departments{
      text-align:  center;
      padding: 40px;
    }
    h1{
      text-align:  center;
    }
    .centerText{
      text-align: center;
    }
    .department{
      position: relative;
      display: inline-block;
      overflow: hidden;
      background-color: rgba(1,0,1,0.33);
      border-radius: 10px;

    }
    .left1{
      position: relative;
      left:10px;
      padding-top: 40px;
      margin-right: 600px;
    }


    .navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:focus, .navbar-inverse .navbar-nav>.active>a:hover {
      color: #fff;
      background-color: darkmagenta;
    }
    .navbar-inverse .navbar-nav>li>a {
      color: black;
      font-family: Cambria;
      font-weight: 600; /* Жирное начертание */
    }
    .name{
      font-family: Cambria;
      font-weight: 600; /* Жирное начертание */
    }
    .ballet-form > .row {
      margin: 20px 0px;
    }
    .menu{
      background-color: #828282;
      color: #FFE7BA;
    }

    span{
      color: rgba(13, 61, 147, 0.7);
      width: 50%;
      font-family: Gisha;
      font-size: 20px;
    }

  </style>

</head>
<body style="height:auto">

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid menu">
    <div class="navbar-header">
      <a class="navbar-brand name" href="#" style="color: black">Metropol</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="${pageContext.request.contextPath}/main">Главная</a></li>
      <li ><a href="${pageContext.request.contextPath}/foto">Фотогалерея</a></li>
      <li><a href="${pageContext.request.contextPath}/room">Номера</a></li>
      <li><a href="${pageContext.request.contextPath}/info">Инфо</a></li>
      <li><a href="${pageContext.request.contextPath}/authorization">Авторизация</a></li>
    </ul>
  </div>
</nav>
<div class="container-fluid ballet-body">
  <div class="jumbotron" style=" font-weight: 600; text-align:  center;">
   <em> Вы можете связаться с нами по указанным ниже телефонам или электронной почте или заполнив контактную форму. Мы с нетерпением ждем возможности лично приветствовать вас в нашем отеле.
   </em>
  </div>
</div>
<div class="container-fluid departments">
<!--<div class="departments">-->
<div class="department">

  <p>ОТДЕЛ БРОНИРОВАНИЯ</p>
  <p>ТЕЛ. +7 495 545 53 00</p>
  <p>RES@METMOS.RU</p>

</div>
<div class="department">

  <p>ОТДЕЛ ПРОДАЖ </p>
  <p>ТЕЛ. +7 495 153 47 13</p>
  <p>SALES@METMOS.RU</p>

</div>
<div class="department">

  <p>ОТДЕЛ СВЯЗЕЙ </p>
  <p>ТЕЛ. +7 495 153 47 13</p>
  <p>PR@METMOS.RU</p>

</div>
</div>
<div class="left1">
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2245.005268647496!2d37.619661415524625!3d55.75841068055483!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46b54a5b0aebf949%3A0x31b6f778d42395d5!2z0J7RgtC10LvRjCDQnNC10YLRgNC-0L_QvtC70Yw!5e0!3m2!1sru!2sby!4v1513724257854" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>



</body>
>>>>>>> a84c98bd145edde15ebd6de96bfcf851dcc2f89b:web/WEB-INF/views/infoPage.jsp
