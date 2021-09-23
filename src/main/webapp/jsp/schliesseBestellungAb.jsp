<jsp:useBean id="emailBean" class="com.example.demo1.EmailBean" scope="session"/>
<jsp:useBean id="warenkorb" class="com.example.demo1.Warenkorb" scope="session"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String tel = request.getParameter("tel");
    String straße = request.getParameter("straße");
    String ort = request.getParameter("ort");
    String bank = request.getParameter("bank");
    String summe = request.getParameter("summe");

    StringBuilder message = new StringBuilder();

    message.append("Sehr geehrter Herr "+name+",\n");
    message.append("anbei Informationen zu Ihrer Bestellung:\n\n");
    message.append("anbei Informationen zu Ihrer Bestellung:\n");

    emailBean.sendEmail("Ihre Bestellung",message.toString(),email);
%>
</body>
</html>
