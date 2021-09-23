package com.example.demo1;

import java.io.Serializable;

public class Produkt implements Serializable {
    String ID;
    String produktname;
    String produktinfo;
    String produkttyp;
    String preis;
    String thumbnailRes;

    public Produkt(String ID, String produktname, String produktinfo, String produkttyp, String preis, String thumbnailRes) {
        this.ID = ID;
        this.produktname = produktname;
        this.produktinfo = produktinfo;
        this.produkttyp = produkttyp;
        this.preis = preis;
        this.thumbnailRes = thumbnailRes;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getProduktname() {
        return produktname;
    }

    public void setProduktname(String produktname) {
        this.produktname = produktname;
    }

    public String getProduktinfo() {
        return produktinfo;
    }

    public void setProduktinfo(String produktinfo) {
        this.produktinfo = produktinfo;
    }

    public String getProdukttyp() {
        return produkttyp;
    }

    public void setProdukttyp(String produkttyp) {
        this.produkttyp = produkttyp;
    }

    public String getPreis() {
        return preis;
    }

    public void setPreis(String preis) {
        this.preis = preis;
    }

    public String getThumbnailRes() {
        return thumbnailRes;
    }

    public void setThumbnailRes(String thumbnailRes) {
        this.thumbnailRes = thumbnailRes;
    }
}