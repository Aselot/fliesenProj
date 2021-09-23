<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <title>F&R Fliesenfachgeschäft</title>
    <link rel="shortcut icon" href="../img/logo.jpeg">
    stylesheet">

    <script type="text/javascript" src="https://code.jquery.com/jquery-1.7.1.min.js"></script>

    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/login.css">


    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i|Open+Sans:300,300i,400,400i,700,700i">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <link rel="stylesheet" href="../css/theme.css">
    <link rel="stylesheet" href="../css/custom.css">

    <style>
        body {
            background-image: url("https://www.werner-peters.de/media/de/shk/anwendungen/badkonfigurator/bilder/badkonfigurator-gross.jpg");
            background-repeat: no-repeat;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            background-color: #cccccc;
        }

        h3 {
            color: black;
        }

        label {
            color: black;
        }

        p {
            color: black;
        }



        /* HIDE RADIO */
        [type=radio] {
            position: absolute;
            opacity: 0;
            width: 0;
            height: 0;
        }

        /* IMAGE STYLES */
        [type=radio] + img {
            cursor: pointer;
        }

        /* CHECKED STYLES */
        [type=radio]:checked + img {
            outline: 2px solid #f00;
        }
    </style>
</head>

<body>

<div style="display: flex; flex-direction: column">
    <div class="Row">
        <nav class="navbar navbar-expand-md navbar-custom fixed-top">
            <div class="container">
                <a class="navbar-brand" href="Oberfläche.jsp"></a>
                <img src="../../img/Logo2.jpg" alt="" width="250px">
                <button class="navbar-light navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarsDefault" aria-controls="navbarsDefault" aria-expanded="false"
                        aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarsDefault">
                    <ul class="navbar-custom navbar-nav ml-auto">


                        <li class="nav-item active">
                            <a class="nav-link" href="Oberfläche.jsp">Über uns <span
                                    class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="builder.jsp">Online-Angebot</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="Produkte.jsp">Produkte</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="Impressum.jsp">Impressum</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="Warenkorb.jsp">
                                <img id="warenkorbNav" src="../img/warenkorbIcon.png" width="64px" height="64px">
                            </a>
                        </li>

                    </ul>
                </div>

            </div>
        </nav>
    </div>

    <div class="login-page">
        <div class="form">
            <form class="register-form" action="register.jsp">
                <input name ='reg_name' id='reg_name' type="text" placeholder="name"/>
                <input  name ='reg_password' id='reg_password' type="password" placeholder="password"/>
                <input name ='reg_email' id='reg_email' type="text" placeholder="email address"/>
                <button>create</button>
                <p class="message">Already registered? <a href="#">Sign In</a></p>
            </form>
            <form class="login-form" action="loginRedirect.jsp">
                <input name ='login_name' id='login_name' type="text" placeholder="username"/>
                <input name ='login_password' id='login_password' type="password" placeholder="password"/>
                <button>login</button>
                <p class="message">Not registered? <a href="#">Create an account</a></p>
            </form>
        </div>
    </div>
</div>

<script>
    $('.message a').click(function () {
        $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
    });

    var Msg = '<%=session.getAttribute("alert")%>';
    <%session.setAttribute("alert","null"); %>
    console.log(Msg)
    if (Msg !== "null") {

        alert(Msg);

    }
</script>
</body>
</html>
