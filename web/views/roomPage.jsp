<<<<<<< HEAD:web/WEB-INF/views/roomPage.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<head>
  <title>Metropol</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
  
<div class="container ballet-body" style="margin-top:50px">
  <br/>
  <div class="container-fluid ballet-body">
    <div class="jumbotron">
  <div class="media">
  <!--Медиа-блок, выровненный в вертикальном направлении по верхнему краю контента (по умолчанию)&ndash;&gt;-->
  <div class="media-left">
    <a class="adagio" id="adagio" href="#" rel="tooltip"  title="Номер в котором останавливался Брюс Уиллис">
      <img class="media-object" src="http://moscow.org/moscow_hotels/Photo/hotel_metropol_4.jpg" alt="" style="height:300px;width:400px;border-radius:10px">
    </a>
  </div>
  <!--Блок, содержащий контент-->
  <div class="media-body">
    <h4 class="media-heading " style="font-weight: 600;">Поллулюкс</h4>
    <div id="adagioText"></div>
  </div>
  </div>
    </div>
</div>
  <div class="container-fluid ballet-body">
    <div class="jumbotron">
<div class="media">
  <!--<!—Медиа-блок, выровненный в вертикальном направлении по верхнему краю контента (по умолчанию)&ndash;&gt;-->
  <div class="media-left">
    <a class="adagio" id="arabesk" href="#"  rel="tooltip"  title="Данный номер является любимым номером владельца отеля">
      <img class="media-object" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH5TbNRDZsVcfXiiPFapDmq-RwPt5pXviggt3KwOeiOVAKzPIZ" alt="" style="height:300px;width:400px;border-radius:10px">
    </a>

  </div>
  <!--Блок, содержащий контент-->
  <div class="media-body">
    <h4 class="media-heading" style="font-weight: 600;">Люкс</h4>
    <div id="arabeskText"></div>
  </div>
</div>
  </div>

</div>
  <div class="container-fluid ballet-body">
    <div class="jumbotron">
<div class="media">
  <!--<!—Медиа-блок, выровненный в вертикальном направлении по верхнему краю контента (по умолчанию)&ndash;&gt;-->
  <div class="media-left">
    <a class="adagio" id="asamble" href="#" rel="tooltip"  title="Номер, который является самым популярным в отеле">
      <img class="media-object" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTEhIVFRUVFRgXFxcVFRUVFRcVFRUWFhYVFhcYHSggGBolHRUVITEhJSkrLi4uGB8zODMsNygtLisBCgoKDg0OGxAQGi0dHR0tLy0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAADAQIEBQYABwj/xABLEAACAQICBAsCCwQJAwUAAAABAgADEQQhBRIxQQYiUWFxgZGhscHwEzIjQlJicoKSorLR4QcUM8JDY3ODo7PD0vEkU9MXVOLj8v/EABkBAAMBAQEAAAAAAAAAAAAAAAABAgMEBf/EACQRAQEAAgICAwACAwEAAAAAAAABAhEDMRIhBBNBIjJCUWEU/9oADAMBAAIRAxEAPwCsoUpYUacrcOaw302+qynt1j4SxoV6m+kp+jUN+xkHjMVp9KnJdNJDpYvlo1Rz/BsPuvfukqnjqe/XHTSqgduraMJSLCqkj08dRJt7anfkLqD2EybTW+zPozjBgpiOCQvszyRSsqbT6BdrAktYAEkmwAAzJJOwARlCsH9xkqD5hDDtUmVHDWnVbCVFpav9Zc2PshmwXn2cmV9+U8XfDnbqnmNjs5Rlsj3RMZX0AU5U7PQiGkp236xreN54ZhtM4mmeJiqy8wqvb7N7S2w3DjSCf02uOR6dMg9J1b98PNX1f9estg0O9fA9xHhBPovkv2g91h4zz/DftKxAyqUKLj5odD18Yjulnh/2j0f6TDVE+g6t+IL4w84X15NM+j2G/tB8rxgWquwnoDX+7+kgYbh3gm/palPmdCT16hfxlnR0/hnyXE0G5i6q3YxHhHuJuNn4G+LcZOoP01zgjUpnahX6LX7jlLYLlcLl8w5d2UBUoIdo7V8x+cNbLaLR0g1MFaTMoO/fnvHIecR1fSFer79RiCLWyAI6FteObCKM7jx7BHInILc52yfGHum0KNtv6/pJtJeTLxgqaWkykI9jREpwyCMr4hEsHazEXCgFnI5Qi3JHPa0AMRVb3VFIcr2ep1KDqrzEludYqFkzKilnYKo2sxCqOknISO2kSf4NMt8+pelT6rjXbqWx+VA0cIusHa7uNjudZhy6u5OhQBzSYBFs9Ixwrv8Axqhb5iXp0utQdZxzMzDmkmjRVRZVCgbAAAB1CPAjwIAloto60W0YMtGskLaIRAkR0kaoksHWR6iRhXmnOkgrFglkKFOT6NOCoU5OpJM2p1NIZViosKqxgmrfIxh0fSOZpITy6i37bSSqwirDQRRgVGzXX6NSog7FYQnsH+LWqDrRv8xWkkLHasegrMbQdkKM6urAhhUphgwO0EKVEweNp2qFbAZgWAsB8KVyGdhnsvPSqyzzzSy2rH6XhWH5zo+P3WPL0rf3dTuBBZOwlr+MjNo6kbHUH9He2V9YfqOyTsLn1OB2NaJTXI83su5UnV4ysd2K2poZDrW1hYMRYk7KlQb+QKBB1NEWBIdgdYADIjNlXP7R7Jd01zboq91Vvzgync6nsqu3+nIvFhfxU5Mp1VNW0G4UsGBsL2Ite+7x7JEbRtQX4gNiBkbbQG5vlCbsYb4Jj8kr5X7qndKl6VmIB5LdIGR/xU+zM/8Az4Vf35z9ZanQqUzrKtRDlmhsc72zXPceyT6PCXG08hiauX/c+E/zAZagZgj5Xd7Vag+657YL2fuEjYoJ6QVB8TJvxp+VX339h9Dh/ixbWFGoN5KFWPWhAHZNxwX0m+JoCq1MIWZgAG1rhTq32C2YYW5ueef09H0yAGQHIX3HihBtGYzO6bnA4FVQUwAEGymo1aee26g3e+/XLTHPj8O7tUzmXU0tmxiA2W9QjaEsQDvDOTqgjkvfmjgare82oPk09vQahF/shDzxlJdg5NklUxIUXD0FUHVUC5ubbSeVjtJ5zJCCNWFUQB6CEAjVhAIA4COAiCOAjDgI606LAiTrRZ0AYwgHWSTBOIEiFZ0MViRky9FJMprBUVkqmJCz1WFVYiCEAjBVEKgiAQiiAcBFtHgRbRgCqs8706tqr9J/EjT0mos874QL8K/S34EPlOj4/wDZjy9KvBjjPzVm7qq/nHonvfU7kX8p1Acep/aMfvUD5ySlPjMOQ+CN+U64wqPb3uir+ImMt3s3Zq4kjvZZIRcieZ4LD5gdBPdR/wDIYG0uBw+tRqgfG1wOkIoHeszb+8T81WHQtwB+Dsm00FT+BT5xY9pf9JlsbS1atvnMp+t7vZ8H2zPC/wAqrKeorfZ2YdFUdYWy91MdsbXX4Nh9IdvH8xCsM0/tVv0VEKHvBihbgjlt3hl/kl6SEd5/tD/iC3cJt8MMhMVTF1+p4prTa4T3R0Tl+ROm3EmU5JSR6YklJztRVhlglhVgYiwgg1hBAHiPEYI8QDo4RIogTokdEMAS0Ywj40wIIidHETowzlISQggackJJUIsKojFhBGBAI9RGrCLAjgI604RRAGOJ5/p5fhqn0m76Q/KehPMJp5fh6nSvehE6Pj/2ZcvShX36nPn2rhTLBF+FbnYd4eQgOM39kD92j/tk5G47H+zP3XnZGFR6mVJzyK3fq/nA0VsvQtvvBf8ARhqovh2+dqj7ZSDw66wy2tqgdLF3/wBURU43mjKVqdMciL22APeZk+EFAitVA3kMOnVX+ZUmyw3up9EfiSZ3hNTtUuORe0lgPvBJz8d/k1znpmNIe6xHydcf3bpWHcWENVFiTusT1K48nMIyAhRu1tX6jgr4VF7IMISi32lGB6dQX71nTWJmGTi2+ae4MnlNboxr01PMPCZbCi9+ioPvk+c0uhj8EvQJy/I/G3EtKckJI6Q6GcrYdYRYJTCLAxlhBBLCLAHiPEYI4QI68cI0RRAFnTrxIBxjTFMaYyJOnToEz1LZDrAUTkOgQ6yYsZYVYJIURkIsIsGsIsAII4RgjhAOaYnT6/8AUtzhD2ZTbmY7hEv/AFPTTHcxm/B/dnydMzT9/poeGt/thcK2dTmFPwaDQfCJz02HZ7T84mDP8boTwM7Y53Yutq4ZDzK3WouPCTtBYf4WmvI4/wAOmi+NMyo0hnSwyfK1B23mh4Ni9TX5A7fbd2HcZGd9VWM9tRhT8HTPMPC/8sq+FFK4a23UBH1HDeUtcOOIo5Cw7EeRtOU7kc6MO0TlnbasXW91rbxfsII7mX7M5X49uUkj6wLH/M7oetSszDkPcwv+GofsyvZrGkx3NqHqJv5Ts3ubYaFwRz+s4+4h85otBN8EOvxMzVIWL81RvwpNFwe/h9Z8TOb5HTXi7XVOQ9P6bp4SiatTPPVRQbF3sTa52CwJJ3c+QM1BPNuFGlUxmKSmqsFoe0Uh9UXqa2rrAAm4uqZ82yc0m7ptfS3w/D6sjKcThClJjbXTXJXpvkxsL24psCbbp6BQqBgGUhlYAgjMEEXBHMQRMlT0aKuHrUiL69O4yvZ9XWRgOUG0gcBNL4lKtLA16XswtJyNdXFW3vLe5tbMi1tgHJDKeNEu49EWEWDWPEQEEcDGAx14A6KI2KDAFnExIl4ApMaTEJiGBFnRt50ZM9hzxR0SUpkPCniiSlMmLHWFUwKmEUxgdY8QSmEUwIURwjBHXgDjMnwoFq1I8qsOyx85q5muFy/wm5HI+0P0mvDdZxGc/iyTfxaP94PH85HotYYjmVfOS8UtqtA/1jDtF5BqZJiehfAzvc5uJNqmGB+LTL/YTWmo4M0bI/Mqr9lLeMy+IF8QR8mgqddQin5zb6Dp8QfOF/tOT5zLkvpWPa1wuaN9M9hb8jE0kP4Z+cPA/lF0Ybg85U9oWdpEfBg8lu8gec52rH6QS1UKfj0h2pdT3XlNpJTq1OUFag6zqv3gzTcIKOasBmNcj6raxHYe+U+LohjYbHDJ1VFup+0p7Z08d3jpllPYOrm5+UVYfWQf7ZfcHBxOs+Mo8DnTRuVQM/mioM+6aHg4vF6z4zD5PTXhntcqk8tSkf3zEA/FrVT9quH8FM9gWhxbzzPD0Q2kcQMuPVLWuMgC6lTYnlnNw5zzb8nHfC2fjX6GGR+gn+Wso8W2rpyhb49D/Srf+OaHRK5f3a9yiUHCAaul8Cw3hh/mj+aXn0yw7bpTHgwKmEUyFCgxRBx14AS868becIA68S8QmITAFYxpaNLRrtAjr886D1osCZ/Bni9clqZAwTZGTFMmNEhTCqZHUwqmUQ6mFUyOrQoaAHBjwYBWhA0AKJQcME+Bv8l1Pfbzl8plbwlpa2Hqcy3+zn5SsLrKFlNxg8Xton+uHeDIVdf44+VVpr25ecsq1MmnTa2ysnebeci1Es7X/wDcX6qVMP4z0duXSJQfWrVm/rAOpFZ/xBe2b3RS2Cjkpr3TB8H01hf5Tux6Cy2/yzN5hP5PKY8lXimaJOVvmr3XHlJGOX4PoHhn5SJots/tdx/WTsSOIehu+YrU2kadwh57faRfyMy9SmUsvIARzj3l+8pWaTTWJNPCtUFj7MI5ve1lezZjZxb52NuSU+lLPSp1lFtqMDa6kMVKtbK6upB65phlqoynpEw5UBrbNYkdDkOPxzZ8GMbhUpA+3pKSl9U0zVqZW1iURg+RPJbOedtXspHPl0Zm3V7v1YJ8KGoox26u3VQkgVXyOspy25c8y+VjuNOLLXT0ijwipNrqGUsAxULr2fVBLKAQrrUspOoQCbHV1gCR51oLTyjE1ndUArsHBYhVQqX1bWuCza4FgPjE3AyNJpo+zrBVKrqkEMiKhBFjn7MWPG6xbYIDAUGqVAabGmwFg1yCthY21Lm5vu3XnFJ45Rtly5a8f9vUtE6TVhxSBemNVqjU11r2sQmtr9RCmUnDC66Q0cdYsTWAN9UWBq0lyCgZcZtt9m2U+G0ZpOkNTD4oKAPc4wBBN2ydLG5JJtvPPDjg7pR62Heu1OotCqjLqsi6qh0LWARb5IMuadFy3GeM09NUwgaCAj1MRigxQYK8cDAhQYt4wRyi8AZiKmqjNt1VZrXtfVUm3NsnmyftcQ7cGw6K4PjTE9IxyHUcW2ow7VM+ZF2Dq8I4K9V/9WKR24WoP7xD5R4/arh9+HrDoNM+Ynk86BPWv/VLDf8AYr/4f++dPJZ0A9ywL7ZNVpSYSvZrc3mPzlLwb4TIKdQ4jEqT7U6utYEpYapUDMg5nLYTIi25DQGN0tRoi9WqifSYAnoG0zz/AIScONZfZ4UsL7altU25KYOY+kbW3csxJBYlmJJOZJJJJ5yczHsaes4n9oeCT3WqVPoUyB2vqyvq/tRp/Ew1RvpOi+Aaea2ElV8HUpgM6EK1rHdc7jyHmMW7elak7bxf2qH/ANn/AI//ANUvNCftEwtZgjhqDHYahU0yeTXHunpA6Z5GpvEalF5H4Pb+FHCEUcM1SlWphg1Ox4tS6l1D2UHPi3PV1zRYwq9Fs+KynPmYZeM+aNTOe4PpKr+4UXoorlqNIlWv7ppgm1jt2dh5o/d6LUkX+g+CSVaGqXPFIINrXZTrA5bBcCYrhVg/YLUbmqdJqMUGQHNeJgv2l4mmrIKFK9jqm7jPcSM723jLqlLiNI18Swes12ZgQLWRQvGXVXpdb7zq9E24LyefvpHJcPH0ttAYTVUj5I1evf0i+Y+lNNhfe+qR3Sr0bTAVlXcxHYbDqtbullQHGHQfOa5XdZSeknRx45+ke+WVbZ1yrwh455wDLCq/FMQUmMpCrha1P5dJ17V/WZnA472mj65CM3HLEKVuBVp08Q7HWYbGqPkLnmmmvZXHMfCYrRFRlqYygSRkcj816iHLoKDsk3tU6Z9tLa2QIF75m+87T39pkzAVWQ5NTqC1iqOxvk1iQLHIsDblXnmdWkQpYWOdu3/mAY36pnncsp7Xj4y+ljpDGksTr3YbMtltgtbdzx3B3HtTqX22GwnaCNnhK41Dq7Tny7CJ2GqEMLdsz6Vfb2PDY0Xp6gRlzL1XZfZgjcLEsbj5ovrDjCXb42nTGs1SmFGZZmWmgBvYAu2bcw6Z4zQ0xXS2rVNhsXJl23PFOXLna+cjY1qlWp7RlJao1jYWuSLAf89MNlp7nhNIU6yh6Th1NwCNmRsRJAaVejqYRAiiwUWA5uWT0MpI4MW8FrRQYAYPKXHcI6lGm1VMOr6pIKmvqGwa176hF+VSRbluCI3hTiWWgwUldfilgofVBVtoOVjkDtyvvMx+icIFqOPariCyrVORZid5ezaza5Bucr+0NortphMf8m8xPCWgtKozh6dlLEMtzmdQWC3JubdAIva8+dtwnpmIoV69UVXrC1VlDINZLU2rHIAE7EYjO9yczeeZPcZEWI2g5EHktHLUXRZ0bedeNJ06M1p0A9WNTjDnBHdfynmOIWzsNgDMOw2no1drMv0rduUy40Gr1HZmNi7EBcsi3KZHqRcUaWnMw5ZscPoCiP6MH6V2+NbfGuaSHVAVbbhYX3xYzzuoM8/Cbqr0Hoq5FRxzqD+IjwE0yjK20HIg5gjnG+BpVRuhBPQwwmM1Hl8vLlnluoGL4P0WuUJpnm4yfZOY6iJCXgy5NvbJ1K1+z9ZbYzEhBt9GSdH4pEHFDVKhBu1rAc19mXMd+ZnPzzDH89uv42fLl3fSlPA19vtv8M2/FPQuDwthaVMm5poKZ6UAG/mt2ypGPqEcVEGVuMfJfzgHrYgEkuhQghqa09W4K2vrBta4vfLOwnNhl79uvJU4qmruyLk5rMgtyFyBrbvOQqGkUV1FTWRbCwsScs1APJc36hKaljTh8RrC6tTqBhmc9VtYZjbcW6ZGq4ksbnMnf+uc3vNl5M5xzT0TDcJkQkHWq3IJYXWw1QLAOM9nMJptF4+jVAKVVLfIOTjPep3c4uOeeLtVqAbbDZllstnfeOfmmj/Zw6/vTF7Fgh1CQCQbgEqdxsx6rx/ZbR4SR6rQC8W1+S9srW8co+pUybovGB8jzEQeLe2t0HvH6S2aNXvY57j5zF4vCmlpEnatdnUEkk50abm5PzlJmwxFTinr8jMTwp0lqYlDqltR6FTLadam9NlHPxBIy6Vj2lYfgpRRdUmo9zfNgueWwBb2642twTw9iFVlJ3iozHsa4ketw8pXI9i/QWUHz8YCrw9XdRPQXA8EMx8s2njFXW0X7FxTJvq241raykbbbtncYHH4VVAbZnttfcTu6O+LpThQaro/sgoUEGzXJuRv1Ra1ju3wOL0jTqU7KSDcHVI5Dna1x4R/hdVbYHAA7pL0zhPZrh2GV8VSU5cusfKWGhKQK3GYvtGztj+Fq/B4fmxVE/iHnHIU7bGnsFtsk03v4Ec8iUm5Ia2/f6yPNGEnWma09wwXD1DR1dVwAdap7pB2MAh2ZHaQctkv1q9R5Mu0d08w/aQf+sv/AFKfieTl6i8JLfafjtMmuOO4qqdqBtVSOhCNktKOlKFDDouHrVbBhdGoAnVYg1BxqhC3ucwSRzzzI22xyYh1912HXfxmcrS4xuab4T2aOmJanUVLKj0qrjWIvYsi6tgR/wASpx+l0cEV6SsSDmMszs2g26byiTSVQZHVI6LHtEHUxYOZDDoIYd9oW20THGQzE4MuSadGwAuQp1tm1u8SvqoVyYEHkIIPfLNCt7hgDynWU9uzvi4lC+0s9vna/mZfmi8d/EfDaRRVCsjMRvFQqNuWVuSLGfuo5J0r7Ij662OnKpCrqkA6wzOwWzuYzC6Tog6qBqhGRsLKM75sRzbhvkThJiiq3W19nQOUc+yE0RQ1aa8pzPSc85nlPRyrKlj6lvcXluWt87IAHl5YzEu7CxVT0gEZG2/phUX12jzEMi+PmslSjp4Gsp4hUD5JBttI5ctkscP7Tem7bcFdl9u3uk9E8PL/AOUMq+u/w1R1zXDmyx6ZZ8GOfato6NJbXqZncOTZ37uvmllSogevXIe8wgT12/r9oR4Hr8uz8MzyyuV3WmOExmoRV9evXYYUD169d9uUevXV93lMeB69dHdzG8rUOn+DaV+Olkqjf8VrZAMOq193VYYSpTdGKMhDA2IbaD1T10L67P07t1iK7TehUxC58V19x94IvkeVb3y/I20xyn6iy/jzspZUa3x0ubZEHO1+ewmm0MurpAfF1qHV/EA3fRmX0vQrUmalVGrxrgD3SLmzKxzIzP8AzLDR2ln/AHilUbV4qaha1hbjMC24G5E13No96ev06tyc9w7x+k7FsNUsdwB6vRmYp4+rb3zstuvbmNr7/W9rMx2sdgG07BawPNs7pflGPktW0lSC2v7yjYL2ugvfkN908407XZqxvkb0ukZ1CO5prmX169eWe0tgAKqG9zVqg2O4JTOQ/Pnk5XcPG+2fGDuWJG/LsnVMKBY/OA7cpsE0aLbI46MTeoPSPXN2xaHmydHR6l2UjIBbdYN4mL0MaYLhrgbQdvJumgwtEfvFUfNpsOcWI8R96E0zQPsXA2kADp1h664tej8rtlaK4ig2suuhO9SQDbnGR65YVuEld1VKpVwrq9wtn4h1rXXi82yXOGwCmzBM9oZuMc88r9B7Y3E8G0bZxG3lRu2Hi7L7c+eGlecaDRXDjCPYOWpN88XXqdbi3SFmow2IV116bq6n4yEMvaJ5HiuC9Rc6ZDjkPFbdy5HbyiVqGtQe4L0X5QTTJ6x7w7ZO6ueN6r3J8/zy7Z5n+0Mn96F/+yn46kjYDhzi0ycrWHz11W6mS3aQZD0/pcYqoKoQpamEIJ1swzG4NhlxuTdJyu4vCaqtjb9ccY0yGlOqKNqnLeDtU8nOOQ/8keIPFUfNO7addszynd1CLGVTl65SZUTRqhGVhbii+d7k3z5hzc0CyiOL36haNMk/wmsflN9oxY286UldaVbXYLym3Vvl3QytzeX/AOTKLDDWq33Ln675e0vI+FvFjHmzxS6Q8v5B5Q1MbOruAP8ALBUz4/ziSKa3y5vEMPykLOUcm7xH6oO2GVfXZb+QxF5d238L/wC6FVBs6u8r4FYjIB65P1Fh9iFVebq7v0+yYid/nt/EGH1oQc3/ACLf7e9Yw5V9d/ZmfvDcIVV9b738b99uWJf0O2/frdbCPC+toyGfl1WO6AKB68LX2c27ascB67und3W2gGLqcvPt77+fbCAejn035TbbyjPaIgrtK6Jp4hNRxberC11NrXH5b+bdkK3A/VJD1WPIQBbvv66r+hhPW3p6eXnGe0Tnw4bI26/08t2Y3zTHLXaMsb+M3hqYCqASbKBnbcLZ29echqY9evXbJ2IwJW5UEgbeVec2+L87Z2C8KlWpsSFdWKmxCkMVPIQDl0dXLNnNYU0x69c/q8jYjAKzpUJzp61hlbjCxJ7PHlk0qd3r149EVb8nr13CBbCWn69eszENMeuvPx7RJDJf/nP1bPpIiMo9Hu7bCAQhglDF9WzkatxyA3A7T3RMTglqKVYEqRnuPL4ASdqAbLesh3kxpS/Jn5/oIDYKUQLKBkBbotZfMzmT11MYYNy+si3nGgjZfcenJREABTt651gq9EMNUgEHcRcbGGw9EmVLZ9fisDUFuo9Oxv1gGZx+gaRuVBp/R93YD7p2ZX2WlFisIaRKkg77gW5Rs6pt6iDw81mX4SIFCtbMmxPNY5dvjIyjbjzu/aqiTiCNsbeZ6dGymDqbDHExlTYeiOJtKIkQGcTA9kvOiXnQLa+0YNp5T+n5y4ony72v5RZ0efaMUuif5T2uTJVE5j6v4mnTpCkiiNg5l7wwhKa3t84D7yW8VE6dEcGXPr2c2sL3+0vfCKL2tvsR9bjKT9YEdBnTowIg5Mtlua54vYbjoMeqbN2y3Nc2HYcugzp0AMi9WzntnYdNjcc4O+Hp0+rvtY2y+ie47506ASEo+uSxzt0GxHMTD08KOjo3WNjboOY5jOnRkWouoAy2DKQQbXAF7FTa1xkwtzjknmfB+l7PE16RdnFPXSmcwDTp13Vsje3G2fSvEnTbGemWX60YNjns/Lb+XbCZHv7tvkOidOjYBlrHo7DY8m658ITV5vQy8TedOjLZdXm7+TijxMRDe4ty+SjznTojMxCbcuXf0KIxqBANvnbeoeU6dAAFjcggfG8o9xkT9LyM6dAGVADu5e8XEznCjRzVFQUxc643ge8pO/nE6dBWN9oGM0UeUH9ZT1qLKfznTorIeOVA1hsOXfOqbJ06RfVdEu4becZ06I4bedOnRh//2Q==" alt="" style="height:300px;width:400px;border-radius:10px">
    </a>

  </div>
  <!--Блок, содержащий контент-->
  <div class="media-body">
    <h4 class="media-heading" style="font-weight: 600;">Стандарт</h4>
    <div id="asambleText"></div>
  </div>
</div>
  </div>

</div>

</div>
<script>
    //открытие картинок в галерее

    //при нажатии на ссылку, содержащую Thumbnail
    $('a.thumbnail').click(function(e) {
        //отменить стандартное действие браузера
        e.preventDefault();
        //присвоить атрибуту scr элемента img модального окна
        //значение атрибута scr изображения, которое обёрнуто
        //вокруг элемента a, на который нажал пользователь
        $('#image-modal .modal-body img').attr('src', $(this).find('img').attr('src'));
        //открыть модальное окно
        $("#image-modal").modal('show');
    });
    //при нажатию на изображение внутри модального окна
    //закрыть его (модальное окно)
    $('#image-modal .modal-body img').on('click', function() {
        $("#image-modal").modal('hide')
    });


    $("#adagio").click(function() {
        document.getElementById("adagioText").innerHTML= "Количество мест в номере: 2" +"<br/>"
            +  "Вид: исторический"+"<br/>"+
            "В спальне: кровать «king size» 2х2 метра"+"</br>"+
            "Просторная ванная комната оснащена тропическим душем, встроенным в зеркалом"+"</br>";
        ;});

    $("#arabesk").click(function(){
        document.getElementById("arabeskText").innerHTML =  "Количество мест в номере: 2" +"<br/>"
            +  "Возрастное ограничение: Детям до 14 лет с сопровождающим лицом"+"<br/>"+
            "Вид: новый"+"</br>"+
            "Площадь номера – 48 кв. метров (157 кв. футов)."+"</br>"+
            "Номера оборудованы ЖК телевизором (с диагональю экрана в 49 дюймов), IPad Air 2, системой «Умный дом»."+"</br>"+
            "К услугам гостей: косметические средства Asprey London в ванных комнатах, мини-бар, кофе-машина Nespresso с набором капсул, элитные сорта чая и чайник KitchenAid."+ "</br>"
    });

    $("#asamble").click(function() {
        $("#asambleText").html("Наши номера класса «Стандарт» аналогичны по благородному декору, комбинированному освещению и удобному зонированию, но в то же время отличаются друг от друга планировкой, дизайном и цветовым решением. Для удобства гостей с детьми отель располагает номерами, сообщающимися между собой.\n" +
            "\n" +
            "Площадь номера «Стандартный» – от 25 м2. \n" +
            "Каждый номер оснащен телевизором с жидкокристаллическим экраном со светодиодной подсветкой, мини-баром и рабочим столом.");
        ;});



    $("#showDanceDirection").bind('click',function(){
        $.getJSON("room.json", function( data ) {
            html = '<div class="panel panel-default">' + '<table class="table table-striped table-hover">' + '<tr>' + '<th>' + 'Фильм' + '</th>' + '<th>' + 'Доступные сеансы сегодня' + '</th>' + '</tr>';
            $.each(data, function(key, val) {
                html += "<tr>" + '<td>' + key + '</td>' +"<td>";
                $.each(val, function(key1, val1) {
                    html += key1 + " ";
                });
                html += "</td>" + "</tr>";
            });
            html += '</table>' + '</div>';

            $("#aboutSchool").append(html);
        });

    });
    $(".adagio").bind('mouseover',function(){
        $(this).tooltip("show");
    })
</script>
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
  
<div class="container ballet-body" style="margin-top:50px">
  <br/>
  <div class="container-fluid ballet-body">
    <div class="jumbotron">
  <div class="media">
  <!--Медиа-блок, выровненный в вертикальном направлении по верхнему краю контента (по умолчанию)&ndash;&gt;-->
  <div class="media-left">
    <a class="adagio" id="adagio" href="#" rel="tooltip"  title="Номер в котором останавливался Брюс Уиллис">
      <img class="media-object" src="http://moscow.org/moscow_hotels/Photo/hotel_metropol_4.jpg" alt="" style="height:300px;width:400px;border-radius:10px">
    </a>
  </div>
  <!--Блок, содержащий контент-->
  <div class="media-body">
    <h4 class="media-heading " style="font-weight: 600;">Поллулюкс</h4>
    <div id="adagioText"></div>
  </div>
  </div>
    </div>
</div>
  <div class="container-fluid ballet-body">
    <div class="jumbotron">
<div class="media">
  <!--<!—Медиа-блок, выровненный в вертикальном направлении по верхнему краю контента (по умолчанию)&ndash;&gt;-->
  <div class="media-left">
    <a class="adagio" id="arabesk" href="#"  rel="tooltip"  title="Данный номер является любимым номером владельца отеля">
      <img class="media-object" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH5TbNRDZsVcfXiiPFapDmq-RwPt5pXviggt3KwOeiOVAKzPIZ" alt="" style="height:300px;width:400px;border-radius:10px">
    </a>

  </div>
  <!--Блок, содержащий контент-->
  <div class="media-body">
    <h4 class="media-heading" style="font-weight: 600;">Люкс</h4>
    <div id="arabeskText"></div>
  </div>
</div>
  </div>

</div>
  <div class="container-fluid ballet-body">
    <div class="jumbotron">
<div class="media">
  <!--<!—Медиа-блок, выровненный в вертикальном направлении по верхнему краю контента (по умолчанию)&ndash;&gt;-->
  <div class="media-left">
    <a class="adagio" id="asamble" href="#" rel="tooltip"  title="Номер, который является самым популярным в отеле">
      <img class="media-object" src="data:image/jpeg;base64,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" alt="" style="height:300px;width:400px;border-radius:10px">
    </a>

  </div>
  <!--Блок, содержащий контент-->
  <div class="media-body">
    <h4 class="media-heading" style="font-weight: 600;">Стандарт</h4>
    <div id="asambleText"></div>
  </div>
</div>
  </div>

</div>

</div>
<script>
    //открытие картинок в галерее

    //при нажатии на ссылку, содержащую Thumbnail
    $('a.thumbnail').click(function(e) {
        //отменить стандартное действие браузера
        e.preventDefault();
        //присвоить атрибуту scr элемента img модального окна
        //значение атрибута scr изображения, которое обёрнуто
        //вокруг элемента a, на который нажал пользователь
        $('#image-modal .modal-body img').attr('src', $(this).find('img').attr('src'));
        //открыть модальное окно
        $("#image-modal").modal('show');
    });
    //при нажатию на изображение внутри модального окна
    //закрыть его (модальное окно)
    $('#image-modal .modal-body img').on('click', function() {
        $("#image-modal").modal('hide')
    });


    $("#adagio").click(function() {
        document.getElementById("adagioText").innerHTML= "Количество мест в номере: 2" +"<br/>"
            +  "Вид: исторический"+"<br/>"+
            "В спальне: кровать «king size» 2х2 метра"+"</br>"+
            "Просторная ванная комната оснащена тропическим душем, встроенным в зеркалом"+"</br>";
        ;});

    $("#arabesk").click(function(){
        document.getElementById("arabeskText").innerHTML =  "Количество мест в номере: 2" +"<br/>"
            +  "Возрастное ограничение: Детям до 14 лет с сопровождающим лицом"+"<br/>"+
            "Вид: новый"+"</br>"+
            "Площадь номера – 48 кв. метров (157 кв. футов)."+"</br>"+
            "Номера оборудованы ЖК телевизором (с диагональю экрана в 49 дюймов), IPad Air 2, системой «Умный дом»."+"</br>"+
            "К услугам гостей: косметические средства Asprey London в ванных комнатах, мини-бар, кофе-машина Nespresso с набором капсул, элитные сорта чая и чайник KitchenAid."+ "</br>"
    });

    $("#asamble").click(function() {
        $("#asambleText").html("Наши номера класса «Стандарт» аналогичны по благородному декору, комбинированному освещению и удобному зонированию, но в то же время отличаются друг от друга планировкой, дизайном и цветовым решением. Для удобства гостей с детьми отель располагает номерами, сообщающимися между собой.\n" +
            "\n" +
            "Площадь номера «Стандартный» – от 25 м2. \n" +
            "Каждый номер оснащен телевизором с жидкокристаллическим экраном со светодиодной подсветкой, мини-баром и рабочим столом.");
        ;});



    $("#showDanceDirection").bind('click',function(){
        $.getJSON("room.json", function( data ) {
            html = '<div class="panel panel-default">' + '<table class="table table-striped table-hover">' + '<tr>' + '<th>' + 'Фильм' + '</th>' + '<th>' + 'Доступные сеансы сегодня' + '</th>' + '</tr>';
            $.each(data, function(key, val) {
                html += "<tr>" + '<td>' + key + '</td>' +"<td>";
                $.each(val, function(key1, val1) {
                    html += key1 + " ";
                });
                html += "</td>" + "</tr>";
            });
            html += '</table>' + '</div>';

            $("#aboutSchool").append(html);
        });

    });
    $(".adagio").bind('mouseover',function(){
        $(this).tooltip("show");
    })
</script>
</body>
>>>>>>> a84c98bd145edde15ebd6de96bfcf851dcc2f89b:web/WEB-INF/views/roomPage.jsp
