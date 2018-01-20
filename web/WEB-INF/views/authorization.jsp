<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <title>Авторизация</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="../css/index.css" rel="stylesheet">
    <style>
        body {
            background-color: #F5F5F5;
            margin-top: 70px;
            font-size: medium;
            font-family: Cambria;

        }

        .text-body {
            padding: 30px;

        }

        h1{
            text-align:  center;
        }
        .centerText{
            text-align: center;
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

        .ballet-form > .row {
            margin: 20px 0px;
        }

    </style>
</head>
<body>

<div class="container-fluid text-center text-body ">
    <form>
    <h1>Авторизация</h1>
    <div class="centerText">
    <div class="form-group">
    <p>
        <b>Логин</b><span class="reqiured">*</span>
        <br>
        <input type="text" class="form-control" name="login" size="30">
    </p>
    <p>
        <b>Пароль</b><span class="reqiured">*</span>
        <br>
        <input type="text" class="form-control" name="pass" size="30">
    </p>
    </div>
    <br>
    <input class="for" type="submit" name="sendData" value="Вход">
        <p>*- обязательные поля</p>
    </div>
    </form>
</div>
<script>

    function LogInUser(userLogin, userPassword) {
        $.ajax({
            url: "/checkInUser",
            contentType: "application/json",
            method: "POST",
            data: JSON.stringify({
                login: userLogin,
                password: userPassword
            }),
            success: function (message) {
                alert(message.login);
                if(message.login != "Неверный логин или пароль!") {
                    window.location.href = "/main";
                }
            }
        })
    }

    $("form").submit(function (e) {
        e.preventDefault();

        var login = this.elements["login"].value;
        var password = this.elements["pass"].value;

                LogInUser(login, password);
    });


</script>
</body>
