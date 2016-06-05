package ro.oho.rest.utils;

import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class SendMail {
	 public static void send(String to, String sub,String msg, final String user,final String pass)
	{ 
		//create an instance of Properties Class   
		Properties props = new Properties();
		
		
		props.put("mail.smtp.host", "smtp.gmail.com");
		//below mentioned mail.smtp.port is optional
		props.put("mail.smtp.port", "587");		
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		
	
		
		Session session = Session.getInstance(props,new javax.mail.Authenticator()
		{
		protected PasswordAuthentication getPasswordAuthentication() 
		{
			return new PasswordAuthentication(user,pass);
		}
		});
		
		try
		{
			if(user!= null)
			{
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse("aga.tandu.10@gmail.com"));
			message.setSubject(sub);
			message.setText(msg);

			Transport.send(message);
			}
		
		
	
		}
		catch(Exception e)
		{
			
		}
	}  
}

