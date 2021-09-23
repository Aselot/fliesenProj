package com.example.demo1;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

public class EmailBean {

    final String username = "";
    final String password = "";

    String emailBotAdress = "aygunselvi@gmail.com";
    String host = "localhost";
    Properties properties;
    Session session;


    public EmailBean(){
        properties = System.getProperties();
//        properties.setProperty("smtp.gmail.com" , "587");

        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.starttls.required", "true");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        session = Session.getInstance(properties,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });
        session.setDebug(true);
    }


    public void sendEmail(String emailTitle, String message, String recipient){

        MimeMessage mimeMessage = new MimeMessage(session);

        try {
            mimeMessage.setFrom(new InternetAddress(emailBotAdress));

            mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));

            mimeMessage.setSubject(emailTitle);

            Multipart multipart = new MimeMultipart();

            BodyPart bodyPart = new MimeBodyPart();
            bodyPart.setText(message);
            multipart.addBodyPart(bodyPart);

            mimeMessage.setContent(multipart);

            Transport.send(mimeMessage);
            System.out.println("Email sent to "+ recipient);


        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }
}
