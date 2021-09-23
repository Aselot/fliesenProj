<jsp:useBean id="prodBean" class="com.example.demo1.ProdukteBean" scope="session"/>
<jsp:useBean id="warenkorb" class="com.example.demo1.Warenkorb" scope="session"/>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="ce" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <title>F&R Fliesenfachgeschäft</title>
    <link rel="shortcut icon" href="../img/logo.jpeg">


    <script type="text/javascript" src="https://code.jquery.com/jquery-1.7.1.min.js"></script>

    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/produkte.css">


    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i|Open+Sans:300,300i,400,400i,700,700i">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <link rel="stylesheet" href="../css/theme.css">
    <link rel="stylesheet" href="../css/custom.css">

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<div class="flex fCol">
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


    <div id='productsGrid' class='flex margin1 border flex-wrap'
         style="background: white; border: 24px black;margin-top: 20% ">

        <c:forEach items="${prodBean.produkte}" var="produkt" varStatus="produktStatus">
            <a id='produktAnchor' href="javascript:redirectToProdukt(${produkt.ID})" style="flex: 1 0 21%">
            <div class="prodDiv margin1 flex fCol border"
                 style="flex: 1 0 21%; border: 24px black; cursor: pointer; height: 300px">

                <div class="margin1 flex" style="flex: 60%">
                    <img src="../${produkt.thumbnailRes}" alt="ressourcePic">
                </div>
                <div class = 'margin1 flex fRow'>
                    <div class="margin1 flex fCol" style="flex: 60%; color: black">
                        <h5>${produkt.produktname}</h5>
                        <h5>${produkt.preis} / ${produkt.produkttyp}</h5>
                    </div>
<%--                    <div class ='margin1 flex fCol'>--%>

<%--                        <button href = 'Produkt.jsp?ID=${produkt.ID}'>Details</button>--%>
<%--                    </div>--%>
                </div>
            </div>
            </a>

        </c:forEach>

    </div>

</div>

<script>
    function redirectToProdukt(ID) {
        window.location = "Produkt.jsp?ID=" + ID
    }
</script>
</body>
</html>
