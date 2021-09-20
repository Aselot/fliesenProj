package com.example.demo1;

public class AuftragBean {

    String name;
    String email;
    String eingangsdatum;
    String sequenz;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEingangsdatum() {
        return eingangsdatum;
    }

    public void setEingangsdatum(String eingangsdatum) {
        this.eingangsdatum = eingangsdatum;
    }

    public String getSequenz() {
        return sequenz;
    }

    public void setSequenz(String sequenz) {
        this.sequenz = sequenz;
    }

    public String toString(){
        return String.format("%s, %s, %s, %s", name,email,eingangsdatum,sequenz);
    }


}
