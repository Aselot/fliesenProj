<%@ page import="com.example.demo1.DBAcess" %>
<jsp:useBean id = "regBean" class = "com.example.demo1.RegisterBean" scope = "session"/>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    DBAcess dbAcc = new DBAcess();
    String name = request.getParameter("reg_name");
    String email = request.getParameter("reg_email");
    String password = request.getParameter("reg_password");

    Thread.sleep(3* 1000);

    String query = String.format("Insert into Profile (Name, Email, Passwort)" +
                    " Values (\"%s\",\"%s\",\"%s\")",name,email,password);
    dbAcc.runQueryAndSaveAndReturnResultSet(query);

    response.sendRedirect("login.jsp");

%>

</body>
</html>
