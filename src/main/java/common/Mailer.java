package common;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mailer {

	   public static void send(String to, String subject, String txt)
	   {
		  try {
		   String from="shivavirthakur@gmail.com";
		   String pwd="novdqdjrnukmszgu";
		   Properties p = new Properties();
		   p.put("mail.smtp.host", "smtp.gmail.com");
		   p.put("mail.smtp.port", "465");
		   p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		   p.put("mail.smtp.auth", "true");
		   p.put("mail.smtp.ssl.protocols", "TLSv1.2");
		   p.put("mail.smtp.debug", "true");
		   Authenticator auth = new Authenticator() {
			   protected PasswordAuthentication getPasswordAuthentication() {
				   return new javax.mail.PasswordAuthentication(from, pwd);
			   }
		};
		Session ses = Session.getInstance(p, auth);
		ses.setDebug(true);
		MimeMessage m = new MimeMessage(ses);
		m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		m.setSubject(subject);
		m.setText(txt);
		InternetAddress add[] = new InternetAddress[1];
		add[0] = new InternetAddress(from);
		m.addFrom(add);
		Transport.send(m);
		
	   }
	  catch (Exception e)
	   {
		   System.err.println(e);
		   System.err.println(e.getMessage());
	   }
	      }
	   }
