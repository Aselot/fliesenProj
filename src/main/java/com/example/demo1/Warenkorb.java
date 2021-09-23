package com.example.demo1;

import java.io.Serializable;
import java.util.ArrayList;

public class Warenkorb implements Serializable {

    public class ProduktAnzahl{
        Produkt produkt;
        Number anzahl;
        public ProduktAnzahl(Produkt produkt, Number anzahl){
            this.produkt = produkt;
            this.anzahl = anzahl;
        }

        public Produkt getProdukt() {
            return produkt;
        }

        public void setProdukt(Produkt produkt) {
            this.produkt = produkt;
        }

        public Number getAnzahl() {
            return anzahl;
        }

        public void setAnzahl(Number anzahl) {
            this.anzahl = anzahl;
        }
    }

    ArrayList<ProduktAnzahl> produkte;
    LoginBean loginProfil;

    public Warenkorb(){
        produkte = new ArrayList<>();
        loginProfil = new LoginBean();
    }

    public void setLoginProfil(String name, String email){
        loginProfil.setUsername(name);
        loginProfil.setEmail(email);
    }

    public void addToWarenkorb(Produkt produkt, Number anzahl){
        produkte.add(new ProduktAnzahl(produkt,anzahl));
    }

    public void deleteFromWarenkorb(int index){
        produkte.remove(index);
    }

    public ArrayList<ProduktAnzahl> getProdukte() {
        return  produkte;
    }

    public double getSumme(){
        double summe = 0.0;

        for (ProduktAnzahl produktAnzahl : this.getProdukte()){
            int strLen = produktAnzahl.produkt.preis.length();
            summe += produktAnzahl.anzahl.doubleValue() * Double.parseDouble(produktAnzahl.produkt.preis.substring(0,strLen-1));
        }
        return Math.round(summe*100)/100;
    }
}
