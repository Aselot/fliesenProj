<jsp:useBean id="warenkorb" class="com.example.demo1.Warenkorb" scope="session"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int index = Integer.parseInt(request.getParameter("index"));
    warenkorb.deleteFromWarenkorb(index);
    response.sendRedirect("Warenkorb.jsp");
%>
</body>
</html>
