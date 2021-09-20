package com.example.demo1;

import java.sql.*;

public class DBAcess {

//    public String databaseName = "DB_MVC_CAT";
//    public String sDbUrl = "jdbc:mysql://localhost:3306/"+databaseName;
//    public String sDbDrv = "org.postgresql.Driver";
//    public String sUsr = "root";
//    public String sPwd = "";

    public String databaseName = "ardiosProj";
    public String sDbUrl = "jdbc:mariadb://localhost:3306/"+databaseName;
    public String sDbDrv = "org.mariadb.jdbc.Driver";
    public String sUsr = "tal";
    public String sPwd = "talpass";

    public Statement stat = null;

    public Connection conn = null;

    public ResultSet rs = null;

    public DBAcess(){

        try {
            Class.forName(this.sDbDrv);
            this.conn = DriverManager.getConnection(sDbUrl, sUsr, sPwd);
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
    }

    public void newStatement(){
        try {
            this.stat = this.conn.createStatement();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public ResultSet runQueryAndSaveAndReturnResultSet(String query){

        this.newStatement();
        this.rs = null;
        try {
            System.out.println(query);
            this.rs = this.stat.executeQuery(query);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return this.rs;
    }

}
