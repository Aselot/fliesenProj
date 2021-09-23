<jsp:useBean id = "logBean" class = "com.example.demo1.LoginBean" scope = "session"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<%
    String name = request.getParameter("login_name");
    String password = request.getParameter("login_password");


    logBean.setUsername(name);
    logBean.setPassword(password);

    boolean flag = logBean.checkIfRegistered(name,password);
    System.out.println("checking if username exists");
    if (flag) {
        String email = logBean.getEmail(name,password);
        logBean.setEmail(email);
        //session.setAttribute("logBean",logBean);
        response.sendRedirect("main.jsp");
        System.out.println("user and password check +");

    }
    else{
        session.setAttribute("alert","Wrong password or username");
        System.out.println("user and password check -");
        response.sendRedirect("login.jsp");
    }

%>
</body>
</html>
