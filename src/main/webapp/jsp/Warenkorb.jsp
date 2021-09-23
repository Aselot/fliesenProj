<jsp:useBean id="prodBean" class="com.example.demo1.ProdukteBean" scope="session"/>
<jsp:useBean id="warenkorb" class="com.example.demo1.Warenkorb" scope="session"/>
<jsp:useBean id="logBean" class="com.example.demo1.LoginBean" scope="session"/>
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

    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" type="text/css" href="../css/produkte.css">
    <link rel="stylesheet" type="text/css" href="../css/theme.css">
    <link rel="stylesheet" type="text/css" href="../css/custom.css">

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i|Open+Sans:300,300i,400,400i,700,700i">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">


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

        h3,h4,h5 {
            color: black;
        }

        table {
            border-collapse: separate;
            border-spacing: 0;
        }
        table, td {
            border: 1px solid black;
            border-radius: 5px;
            -moz-border-radius: 5px;
            padding: 5px;
        }

        label {
            color: black;
        }

        p {
            color: black;
        }

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


    <div id='productsGrid' class='flex margin1 border flex-wrap fCol'
         style="background: white; border: 24px black;margin-top: 20% ">

        <h3>Warenkorb</h3>

        <table>
            <tr>
                <th><h5>Thumbnail</h5></th>
                <th><h5>Name</h5></th>
                <th><h5>Typ</h5></th>
                <th><h5>Preis</h5></th>
                <th><h5>Menge</h5></th>
                <th><h5>Entfernen</h5></th>
            </tr>
            <c:forEach items="${warenkorb.produkte}" var="produktAnzahl" varStatus="produktStatus">

                <%--               <div class="flex fRow fGrow">--%>
                <tr>
                    <td><img src="../${produktAnzahl.produkt.thumbnailRes}" class="fGrow margin3"></td>
                    <td>
                        <a class="flex fRow fGrow" id='produktAnchor'
                           href="javascript:redirectToProdukt(${produktAnzahl.produkt.ID})"
                           style="flex: 1 0 80%">
                            <h4 class="fGrow margin3" style="color: black">${produktAnzahl.produkt.produktname}</h4>
                        </a>
                    </td>
                    <td><h4 class="fGrow margin3" style="color: black">${produktAnzahl.produkt.produkttyp}</h4></td>
                    <td><h4 class="fGrow margin3" style="color: black">${produktAnzahl.produkt.preis}</h4></td>
                    <td><h4 class="fGrow margin3" style="color: black">${produktAnzahl.anzahl.doubleValue()}</h4></td>
                    <td>
                        <a href="loescheAusWarenkorb.jsp?index=${produktStatus.index}">
                            <button class="fGrow margin3" id='deleteElem'>
                                -
                            </button>
                        </a>
                    </td>
                        <%--                </div>--%>
                </tr>
            </c:forEach>


        </table>
        <div class="flex margin3 fRow border">
            <h3 style="margin-right: 5%">Summe</h3>
            <h3> ${warenkorb.summe}€</h3>
            <% session.setAttribute("summe", warenkorb.getSumme());%>
        </div>
        <button id="myBtn" class="btn btn-1 btn-sep">Bestellen</button>

    </div>

    <div id="myModal" class="modal margin3">

        <div class="modal-content" style="display: flex; flex-direction: column">
            <span class="close">&times;</span>
            <form action="schliesseBestellungAb.jsp">
                <h3>Kontaktdaten</h3>
                <p>Info: Ihre Daten werden vertraulich bearbeitet</p>
                <div class="flex fRow">
                    <div class="flex fCol margin3" style="flex: 1 0 40%;">
                        <label for="name">Vor-und Nachname:</label>
                        <input type="text" id="name" name="name" value="${logBean.username}">
                        <br>
                        <br>
                        <label for="email">Email:</label>
                        <input type="text" id="email" name="email" value="${logBean.email}"><br>
                        <label for="tel">Telefonnummer:</label>
                        <input type="number" id="tel" name="Telefonnummer"><br>
                        <br>
                    </div>
                    <div class="flex fCol margin3" style="flex: 1 0 40%;">
                        <p>Addressdaten</p>
                        <label for="straße">Straße</label>
                        <input type="text" id="straße" name="straße">
                        <label for="ort">Postleitzahl/Ort</label>
                        <input type="text" id="ort" name="ort">
                        <label for="bank">Bankdaten</label>
                        <input type="text" id="bank" name="bank" value="Hier könnte Ihre Werbung stehen" disabled>
                    </div>
                </div>
                <%-- <input type="submit" value="Submit" id="submit">--%>
                <button class="btn btn-1" id='submit' value="Send">Abgeben</button>
            </form>

        </div>
    </div>

</div>

<script>
    function redirectToProdukt(ID) {
        window.location = "Produkt.jsp?ID=" + (parseInt(ID)-1)
    }

    var modal = document.getElementById("myModal");
    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks on the button, open the modal
    btn.onclick = function () {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
</body>
</html>
