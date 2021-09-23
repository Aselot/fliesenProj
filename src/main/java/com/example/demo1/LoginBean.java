package com.example.demo1;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginBean implements Serializable {

    DBAcess dbAcess = new DBAcess();

    String username;
    String email;
    String password;


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean checkIfRegistered(String username, String password){
        String query = String.format("Select * From Profile Where name = \"%s\" and passwort = \"%s\";",username,password);
        ResultSet rs = dbAcess.runQueryAndSaveAndReturnResultSet(query);

        try {
            return rs.next();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return false;
        }
    }

    public String getEmail(String username, String password){
        String query = String.format("Select * From Profile Where name = \"%s\" and passwort = \"%s\";",username,password);
        ResultSet rs = dbAcess.runQueryAndSaveAndReturnResultSet(query);
        try {
            rs.next();
            return rs.getString("Email");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }


}
