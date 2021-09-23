package com.example.demo1;

import javax.persistence.criteria.CriteriaBuilder;
import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProdukteBean implements Serializable {

    ArrayList<Produkt> produkte;
    DBAcess dbAcess;

    public ProdukteBean(){
        dbAcess = new DBAcess();
        produkte = new ArrayList<>();

        ResultSet rs = dbAcess.runQueryAndSaveAndReturnResultSet("Select * From Produkte;");
        try {
            while (rs.next()) {
                produkte.add(new Produkt(   rs.getString("ID"),
                                            rs.getString("Produktname"),
                                            rs.getString("Produktinfo"),
                                            rs.getString("Produkttyp"),
                                            rs.getString("Preis"),
                                            rs.getString("ThumbnailRes")));
            }

        }
        catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    public ArrayList<Produkt> getProdukte() {
        return produkte;
    }

    public Object getProdukt(int ID){
        return this.produkte.get(ID);
    }

//    public String getProdukteHtml(){
//
//        StringBuilder html = new StringBuilder();
//
//        for(Produkt produkt : getProdukte()){
//            html.append(String.format(
//                    "<div>"
//            ));
//        }
//
//    }
}
