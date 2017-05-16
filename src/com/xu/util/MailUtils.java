package com.xu.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.mail.util.MailSSLSocketFactory;

public class MailUtils {

	public static void sendRegMail(String to, String code) throws Exception {
		// 1.创建连接对象，连接到邮件服务器
		Properties props = new Properties();
		// 获取163邮箱smtp服务器的地址，
		// qq邮箱的SSL加密
//		MailSSLSocketFactory sf = new MailSSLSocketFactory();
//		sf.setTrustAllHosts(true);
//		props.setProperty("mail.smtp.ssl.enable", "true");
//		props.put("mail.smtp.ssl.socketFactory", sf);
//		props.setProperty("mail.host", "smtp.qq.com");
//		// 是否进行权限验证。
//		props.setProperty("mail.smtp.auth", "true");
		Session session = Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				// 会变的！！
				return new PasswordAuthentication("javaBank@banking.com", "123");
			}
		});

		// 2.创建邮件对象
		Message message = new MimeMessage(session);
		// 2.1 设置发件人
		message.setFrom(new InternetAddress("javaBank@banking.com"));
		// 2.2 设置收件人
		message.setRecipient(RecipientType.TO, new InternetAddress(to));
		// 2.3 设置主题
		message.setSubject("javaBank Activate");
		// 2.4 邮件正文
		// <a href='http://localhost:8080/javaBank/ActivateAction?code='" + code + "'>" "http://localhost:8080/javaBank/ActivateAction?code=" + code
		message.setContent(
				"<style type='text/css'>" +
                "body{" + 
	            "background-image:url('http://localhost:8080/javaBank/Public/images/bg1.jpg');" +
	            "position:absolute relative;" +
	            "}</style>" +
	            "<body ><br /><center>" +
				"<font style='font-family:Times New Roman' size='+4'>Activatly Successlly</font>" +
				"<table cellpadding='0px' cellspacing='0' style=' margin-left:150px; margin-right:120px;color:#000;border:none;font-family:Verdana,Geneva,sans-serif ;font-size:22px;' >" +
				"<tr><td><p ><h4>Hi,Dear customer:</p></h4></td></tr>" +
				"<tr><td>&nbsp;Your online bank is activated successlly!<p>&nbsp;Please click the following link to go back to the bank website!</p></td></tr>" +
				"<tr><td><font color='#0000CC'>" + 
				"&nbsp;<a href='" + GenerateUrlUtils.generateRegUrl(code) + "'>" + GenerateUrlUtils.generateForgetPwdUrl(code) + "</a>" +
				"</font>" +
				"<p><font size='+1' style='color:#333'>(If you can't click the URL link address, copy and paste it to the browser's address input box, and then click enter.)</font></p> </td></tr>" + 
				"<tr><td>&nbsp;</td></tr><tr><td><font size='+1' style='color:#333'>Remind!" +
				"<p>1,If this is not what you apply for, please ignore this email.</p><p>2,if you continue to receive this kind of letter , please contact the administrator as soon as possible.</p>" +
				"</font> </td></tr><tr ><td align='right'><h4>Send by the Bank!</h4></td></tr></table></center></body>"				
				,
				"text/html;charset=UTF-8");

		// 3.发送一封激活邮件
		Transport.send(message);
	}
	
	public static void sendForgetPwdMail(String to, String code) throws Exception {
		// 1.创建连接对象，连接到邮件服务器
		Properties props = new Properties();
		// 获取163邮箱smtp服务器的地址，
		// qq邮箱的SSL加密
//		MailSSLSocketFactory sf = new MailSSLSocketFactory();
//		sf.setTrustAllHosts(true);
//		props.setProperty("mail.smtp.ssl.enable", "true");
//		props.put("mail.smtp.ssl.socketFactory", sf);
//		props.setProperty("mail.host", "smtp.qq.com");
//		// 是否进行权限验证。
//		props.setProperty("mail.smtp.auth", "true");
		Session session = Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				// 会变的！！
				return new PasswordAuthentication("javaBank@banking.com", "123");
			}
		});

		// 2.创建邮件对象
		Message message = new MimeMessage(session);
		// 2.1 设置发件人
		message.setFrom(new InternetAddress("javaBank@banking.com"));
		// 2.2 设置收件人
		message.setRecipient(RecipientType.TO, new InternetAddress(to));
		// 2.3 设置主题
		message.setSubject("javaBank Reset Password");
		// 2.4 邮件正文
		// <a href='http://localhost:8080/javaBank/ActivateAction?code='" + code + "'>" "http://localhost:8080/javaBank/ActivateAction?code=" + code
		message.setContent(
				"<style type='text/css'>" +
                "body{" + 
	            "background-image:url('http://localhost:8080/javaBank/Public/images/bg1.jpg');" +
	            "position:absolute relative;" +
	            "}</style>" +
	            "<body ><br /><center>" +
				"<table cellpadding='0px' cellspacing='0' style=' margin-left:190px; margin-right:120px;border:none;font-family:Verdana,Geneva,sans-serif ;font-size:22px;' >" +
				"<tr><td><p><h4>Hi,Dear customer:</p></h4></td></tr>" +
				"<tr><td>&nbsp;You received this E-mail because you (or possibly someone else) applied for a new password. If this is not what you apply for, please ignore this email, but if you continue to receive this kind of letter harassment, please contact the administrator as soon as possible.</td></tr>" +
				"<tr><td><p>Please click the following link to go back to the bank website and reset password!<p></td></tr>" + 
				"<tr><td><font color='#0000CC'>" + 
				"&nbsp;<a href='" + GenerateUrlUtils.generateForgetPwdUrl(code) + "'>" + GenerateUrlUtils.generateForgetPwdUrl(code) + "</a>" +
				"</font>" +
				"<p><font size='+1' style='color:#333'>(If you can't click the URL link address, copy and paste it to the browser's address input box, and then click enter.)</font></p> </td></tr>" + 
				"<tr><td>&nbsp;</td></tr><tr><td><font size='+1' style='color:#333'>Remind!" +
				"<p>Please use the email within 1 hour , otherwise the link will fail..</p>" +
				"</font> </td></tr><tr ><td align='right'><h4>Send by the Bank!</h4></td></tr></table></center></body>"				
				,
				"text/html;charset=UTF-8");

		// 3.发送一封激活邮件
		Transport.send(message);
	}
}

