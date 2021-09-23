<jsp:useBean id="logBean" type="com.example.demo1.LoginBean" scope="session"/>
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


    <link rel="stylesheet" href="../css/main.css">


    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i|Open+Sans:300,300i,400,400i,700,700i">
    <link href=" https:
    //maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <link rel="stylesheet" href="../css/theme.css">
    <link rel="stylesheet" href="../css/custom.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.7.1.min.js"></script>


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

        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0, 0, 0); /* Fallback color */
            background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
        }

        .btn {
            border: none;
            font-family: 'Lato';
            font-size: inherit;
            color: inherit;
            background: none;
            cursor: pointer;
            padding: 25px 80px;
            display: inline-block;
            margin: 15px 30px;
            letter-spacing: 1px;
            font-weight: 700;
            outline: none;
            position: relative;
            -webkit-transition: all 0.3s;
            -moz-transition: all 0.3s;
            transition: all 0.3s;
        }

        .btn:after {
            content: '';
            position: absolute;
            z-index: -1;
            -webkit-transition: all 0.3s;
            -moz-transition: all 0.3s;
            transition: all 0.3s;
        }

        /* Pseudo elements for icons */
        .btn:before {
            font-family: 'FontAwesome';
            speak: none;
            font-style: normal;
            font-weight: normal;
            font-variant: normal;
            text-transform: none;
            line-height: 1;
            position: relative;
            -webkit-font-smoothing: antialiased;
        }


        /* Icon separator */
        .btn-sep {
            padding: 25px 60px 25px 120px;
        }

        .btn-sep:before {
            background: rgba(0, 0, 0, 0.15);
        }

        /* Button 1 */
        .btn-1 {
            background: #3498db;
            color: #fff;
        }

        .btn-1:hover {
            background: #2980b9;
        }

        .btn-1:active {
            background: #2980b9;
            top: 2px;
        }

        .btn-1:before {
            position: absolute;
            height: 100%;
            left: 0;
            top: 0;
            line-height: 3;
            font-size: 140%;
            width: 60px;
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
        }

        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
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

    <div class="Row" style="margin-top: 20%; margin-left: 33%">>
        <button id="myBtn" class="btn btn-1 btn-sep">Fliesenauftrag Konfigurator</button>

        <!-- The Modal(Das PoP-Up Fenster nach dem Button: Fliesenauftrag konfigurieren... -->
        <div id="myModal" class="modal">

            <!-- Modal content -->
            <div class="modal-content" style="display: flex; flex-direction: column">
                <span class="close">&times;</span>
                <form id="saveAuftrag" action="saveToDB.jsp">
                    <div id="configuratorBody">

                        <div aria-hidden="false" id="div1" style="display:flex; flex-direction: column">
                            <h3>Baumaßnahme</h3>
                            <p>Info: Handelt es sich um Neubau, Sanierung oder Renovierung?</p>
                            <fieldset id='baumaßnahme' style="display: flex;flex-direction: row; flex-grow: 1; ">
                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">
                                    <input type="radio" id="neu" name="baumaßnahme" value="neu">
                                    <img src="https://www.trendfliese.de/media/de/fliesen/angebot-anfrage/bilder/neubau_klein.JPG">
                                    Neubau
                                </label>
                                </label>
                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">
                                    <input type="radio" id="san" name="baumaßnahme" value="sanierung">
                                    <img src="https://www.trendfliese.de/media/de/fliesen/angebot-anfrage/bilder/sanierung_klein.JPG">
                                    Sanierung
                                </label>
                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">
                                    <input type="radio" id="renov" name="baumaßnahme" value="renovierung">
                                    <img src="https://www.obi.de/magazinapi/dam/Bad/alte-fliesen-entfernen-in-6-schritten/alte-fliesen-entfernen-titel.jpg">
                                    Renovierung
                                </label>
                            </fieldset>
                        </div>
                        <div aria-hidden="true" id="div2" style="display:none;">
                            <h3>Ausstattung</h3>
                            <p>Info: Wählen Sie bitte die gewünschte Ausstattung und drücken Sie dann auf "Weiter".</p>
                            <fieldset id='ausstattung' style="display: flex; flex-direction: row; flex-grow: 1;">
                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">
                                    <input type="radio" id="basis" name="ausstattung" value="basis">
                                    <img src="https://www.trendfliese.de/media/de/fliesen/angebot-anfrage/bilder/basis_klein.jpg">
                                    Basis
                                </label>
                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">
                                    <input type="radio" id="hochwertig" name="ausstattung" value="hochwertig">
                                    <img src="https://www.trendfliese.de/media/de/fliesen/angebot-anfrage/bilder/hochwertig_klein.JPG">
                                    Hochwertig
                                </label>
                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">
                                    <input type="radio" id="exklusiv" name="austattung" value="exklusiv">
                                    <img src="https://www.trendfliese.de/media/de/fliesen/angebot-anfrage/bilder/exklusiv_klein.JPG">
                                    Exklusiv
                                </label>
                            </fieldset>
                        </div>
                        <div aria-hidden="true" id="div3" style="display:none;">
                            <h3>Besondere Ansprüche</h3>
                            <p>Was ist Ihnen besonders wichtig bei der Umsetzung? Wählen Sie hier eine oder mehrere
                                Optionen aus </p>
                            <fieldset id='ansprüche' style="display: flex; flex-direction: row; flex-grow: 1;">
                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">
                                    <input type="radio" id="allerg" name="ansprüche" value="Allergiker geeignet">
                                    <img src="https://www.trendfliese.de/media/de/fliesen/angebot-anfrage/bilder/allergiker_klein.jpg">
                                    Allergiker geeignet
                                </label>
                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">
                                    <input type="radio" id="Barrierefreiheit" name="ansprüche" value="barrierefreiheit">
                                    <img src="https://www.trendfliese.de/media/de/fliesen/angebot-anfrage/bilder/barrierefreiheit_klein.JPG">
                                    Barrierefreiheit
                                </label>
                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">
                                    <input type="radio" id="rutschhemmung" name="austattung" value="rutschhemmung">
                                    <img src="https://www.trendfliese.de/media/de/fliesen/angebot-anfrage/bilder/rutschhemmung_klein.JPG">
                                    Rutschhemmung
                                </label>
                            </fieldset>
                        </div>
                        <%--                         <div aria-hidden="true" id="div4" style="display:none;">--%>
                        <%--                            <h3>Raum</h3>--%>
                        <%--                            <p>Info: Wo sollen Fliesen verlegt werden? Wählen Sie eine oder mehrere Optionen aus und danach auf „Weiter“.</p>--%>
                        <%--                            <fieldset id='raum' style="display: flex; flex-direction: row; flex-grow: 1;">--%>
                        <%--                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">--%>
                        <%--                                    <input type="radio" id="basis" name="ausstattung" value="basis">--%>
                        <%--                                    <img src="https://www.trendfliese.de/media/de/fliesen/angebot-anfrage/bilder/basis_klein.jpg">--%>
                        <%--                                    Basis--%>
                        <%--                                </label>--%>
                        <%--                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">--%>
                        <%--                                    <input type="radio" id="hochwertig" name="ausstattung" value="hochwertig">--%>
                        <%--                                    <img src="https://www.trendfliese.de/media/de/fliesen/angebot-anfrage/bilder/hochwertig_klein.JPG">--%>
                        <%--                                    Hochwertig--%>
                        <%--                                </label>--%>
                        <%--                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">--%>
                        <%--                                    <input type="radio" id="exklusiv" name="austattung" value="exklusiv">--%>
                        <%--                                    <img src="https://www.trendfliese.de/media/de/fliesen/angebot-anfrage/bilder/exklusiv_klein.JPG">--%>
                        <%--                                    Exklusiv--%>
                        <%--                                </label>--%>
                        <%--                            </fieldset>--%>
                        <%--                        </div>--%>


                        <div aria-hidden="true" id="div5" style="display:none">
                            <h3>Bodenfläche</h3>
                            <p>Info: Geben Sie bitte eine Quadratmeter-Anzahl, sofern SIE diese wissen. Falls nicht,
                                klicken Sie ohne eine Angabe auf weiter </p>
                            <fieldset id='bodenfläche' style="display: flex; flex-direction: row; flex-grow: 1;">
                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">

                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0yERyBTpLduCQFNoBupuxVysf0up3fr1lAA&usqp=CAU">
                                </label>
                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">
                                    <input type="number" id="boden_m2" name="bodenfläche">
                                    Quadratmeter (m²)
                                </label>
                            </fieldset>
                        </div>
                        <div aria-hidden="true" id="div6" style="display:none">
                            <h3>Wandfläche</h3>
                            <fieldset id='wandfläche' style="display: flex; flex-direction: row; flex-grow: 1;">
                                <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">
                                    <img src="data:image/jpeg;base64,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">
                                    <label style="display: flex; flex-direction: column; flex: 50%; margin: 1%">
                                        <input type="number" id="wand_m2" name="wandfläche">
                                        Quadratmeter (m²)

                                    </label>
                                </label>

                            </fieldset>
                        </div>
                        <div aria-hidden="true" id="div7" style="display: none">
                            <h3>Kontaktdaten</h3>
                            <p>Info: Ihre Daten werden vertraulich bearbeitet</p>
                            <label for="name">Vor-und Nachname:</label>
                            <input type="text" id="name"name="name"value="${logBean.username}">
                            <br>
                            <br>
                            <label for="email">Email:</label>
                            <input type="text"id="email" name="email" value="${logBean.email}"><br>
                            <label for="tel">Telefonnummer:</label>
                            <input type="number" id="tel"name="Telefonnummer"><br>
                            <br>
                            <%-- <input type="submit" value="Submit" id="submit">--%>
                            <button class="btn btn-1" id='submit' value="Send">Abgeben</button>
                        </div>

                    </div>
                </form>
                <button class="btn btn-1" id="nextBtn">
                    Weiter
                </button>
                <button class="btn btn-1" id="prevBtn">
                    Zurück
                </button>
            </div>

        </div>
    </div>

</div>

<div style="display: none">

</div>

<script>
    // Get the modal
    var modal = document.getElementById("myModal");

    var modalBody = document.getElementById("configuratorBody")

    var div1 = document.getElementById("div1")
    var div2 = document.getElementById("div2")
    var div3 = document.getElementById("div3")
    var div4 = document.getElementById("div4")
    var div5 = document.getElementById("div5")
    var div6 = document.getElementById("div6")
    var div7 = document.getElementById("div7")
    var divs = [div1, div2, div3, div5, div6, div7]

    var index = 0

    var name = document.getElementById("name")
    var email = document.getElementById("email")
    var nextBtn = document.getElementById("nextBtn")
    var prevBtn = document.getElementById("prevBtn")

    $('#saveAuftrag').submit(function () {


        if (name.value === "" || email.value === "") {
            alert('Bitte geben Sie Ihre Kontakdaten richtig ein')
            return false

        } else {
            alert('Ihr Auftrag ist bei uns eingegangen und wird schnellstmöglich bearbeitet')
            window.location.href = "saveToDB.jsp"
        }
    });

    var formButton = document.getElementById("submit")

    nextBtn.onclick = function () {

        console.log(index, divs)
        if (index == divs.length - 1) {
            return
        } else {
            divs[index].style.display = "none"
            index++
            divs[index].style.display = "flex"
            divs[index].style.flexDirection = "column"
        }
    }
    //
    prevBtn.onclick = function () {
        console.log(index, divs)
        if (index == 0) {
            return
        } else {
            divs[index].style.display = "none"
            index--
            divs[index].style.display = "flex"
            divs[index].style.flexDirection = "column"
        }
    }

    // formButton.onclick = function () {
    //     alert('Ihr Auftrag ist bei uns eingegangen und wird schnellstmöglich bearbeitet')
    //
    //
    // }


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
