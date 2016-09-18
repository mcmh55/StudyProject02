package com.personal.util;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import com.personal.model.EmailDTO;

@Component
public class EmailSender {

	@Autowired
	private JavaMailSender mailSender;
	
	public void SendEmail(EmailDTO email) throws Exception {
        
        MimeMessage msg = mailSender.createMimeMessage();
        msg.setSubject(email.getSubject());
        msg.setText(email.getContent(), "UTF-8", "html");
        msg.setRecipient(RecipientType.TO , new InternetAddress(email.getReciver()));
         
        mailSender.send(msg); 
    }
}