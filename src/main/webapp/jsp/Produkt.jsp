<%@ page import="com.example.demo1.Produkt" %>
<jsp:useBean id="prodBean" class="com.example.demo1.ProdukteBean" scope="session"/>
<jsp:useBean id="warenkorb" class="com.example.demo1.Warenkorb" scope="session"/>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <title>F&R Fliesenfachgesch�ft</title>
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

        /* Pseudo elements for icons */


        /* Icon separator */

        /* Button 1 */

        /* Modal Content/Box */

        /* The Close Button */

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
            <a class="navbar-brand" href="Oberfl�che.jsp"></a>
            <img src="../../img/Logo2.jpg" alt="" width="250px">
            <button class="navbar-light navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarsDefault" aria-controls="navbarsDefault" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarsDefault">
                <ul class="navbar-custom navbar-nav ml-auto">


                    <li class="nav-item active">
                        <a class="nav-link" href="Oberfl�che.jsp">�ber uns <span
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

    <%
        Produkt produkt = prodBean.getProdukte().get(Integer.parseInt(request.getParameter("ID")));
        session.setAttribute("lastProdukt", produkt);
    %>


    <%--    <c:set var="produkt" value= "${prodBean.getProdukt(Integer.parseInt(headerValues.get('ID')))}"/>--%>

    <div id='productsGrid' class='flex margin3 border white flex-wrap fRow'
         style="background: wheat; border-color: black; margin-top: 20% ">
        <div class="margin3 flex fCol fGrow" style="flex: 42%">
            <img src="../${lastProdukt.thumbnailRes}">
            <div class="margin3">
                <h3>${lastProdukt.produktname}</h3>
                <h5 style="color: black">${lastProdukt.produktinfo}</h5>
            </div>
        </div>
        <div class="margin3 flex fCol fGrow" style="flex: 42%">
            <h3>${lastProdukt.preis} / ${lastProdukt.produkttyp}</h3>
            <form action="fuegeZuWarenkorb.jsp">
                <label class="margin3" for="anzahlInput"> Warenanzahl / ${lastProdukt.produkttyp} </label>
                <input class="margin3" type="number" id="anzahlInput" name="anzahlInput" style="width: 40%">
                <button class="margin3" style="width: 40%">Zum Warenkorb hinzufuegen</button>
            </form>

        </div>


    </div>

</div>

<!-- endinject -->

</body>
</html>
<!-- endinject -->