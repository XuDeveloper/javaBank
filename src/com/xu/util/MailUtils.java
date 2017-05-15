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

	public static void sendMail(String to, String code) throws Exception {
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
		message.setSubject("javaBank激活邮件");
		// 2.4 邮件正文
		message.setContent(
				"123333<h1>激活！</h1><h3><a href='http://localhost:8080/javaBank/ActivateAction?code='" + code + "'>"
						+ "http://localhost:8080/javaBank/ActivateAction?code=" + code + "</a></h3>",
				"text/html;charset=UTF-8");

		// 3.发送一封激活邮件
		Transport.send(message);
	}
}
