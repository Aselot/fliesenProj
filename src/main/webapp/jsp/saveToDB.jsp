<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.example.demo1.DBAcess" %>

<%
    //String sDbDrv = "org.postgresql.Driver";
//    String sUsr = "root";
//    String sPwd = "";
//    String databaseName = "DB_MVC_CAT";

//    String sDbDrv = "org.mariadb.jdbc.Driver";
//    String sUsr = "tal";
//    String sPwd = "talpass";
//    String databaseName = "ardiosProj";
//
//    String sDbUrl = "jdbc:mysql://localhost:3306";

    DBAcess databaseConn = new DBAcess();


%>


<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    System.out.println("starting writ eto DB");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String telno = request.getParameter("tel");
    String baumaßnahme = request.getParameter("baumaßnahme");
    String ausstattung = request.getParameter("ausstattung");
    String raum = request.getParameter("raum");
    String bodenfläche = request.getParameter("bodenfläche");
    String wandfläche = request.getParameter("wandfläche");
    

    if (name == null) {
        return;
    }
    System.out.println("engaged");
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd 'at' HH:mm:ss z");
    Date date = new Date(System.currentTimeMillis());
    String eingangsDatum = date.toString();

    if (request.getParameterNames().hasMoreElements()) {
        Connection cn = databaseConn.conn;
        Statement st = databaseConn.stat;
        ResultSet rs = databaseConn.rs;
        try {



            st = cn.createStatement();
            String query = "Use " + databaseConn.databaseName + ";";
            rs = st.executeQuery(query);

            st = cn.createStatement();
            query = String.format("Insert into auftrag (KundenName, Email, TelNo, EingangsDatum, Sequenz)" +
            " VALUES (\"%s\",\"%s\",\"%s\",\"%s\",\"%s\");",
            name, email,telno, eingangsDatum, baumaßnahme + "," + ausstattung+","+raum+ ","+wandfläche+","+bodenfläche );
            System.out.println(query);
            rs = st.executeQuery(query);
//                                ResultSetMetaData rsmd = rs.getMetaData();

        } catch (SQLException  e) {
            System.out.println(e);

        } finally {
        }
        try {
            if (null != rs) rs.close();
        } catch (Exception ex) {/*ok*/}
        try {
            if (null != st) st.close();
        } catch (Exception ex) {/*ok*/}
        try {
            if (null != cn) cn.close();
        } catch (Exception ex) {/*ok*/}
    }

    response.sendRedirect("builder.jsp");
%>

</body>
</html>
