<jsp:useBean id="warenkorb" scope="session" class="com.example.demo1.Warenkorb"/>

<%@ page import="com.example.demo1.Produkt" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Produkt lastProdukt = (Produkt) session.getAttribute("lastProdukt");
    String anzahl = request.getParameter("anzahlInput");
    warenkorb.addToWarenkorb(lastProdukt,Double.parseDouble(anzahl));

    response.sendRedirect("Produkt.jsp?ID="+(Integer.parseInt(lastProdukt.getID())-1));

%>
</body>
</html>
