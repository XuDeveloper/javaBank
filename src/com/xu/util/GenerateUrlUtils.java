package com.xu.util;

public class GenerateUrlUtils {

	public static String generateRegUrl(String code) {
		return "http://localhost:8080/javaBank/ActivateAction?code=" + code;
	}
	
	public static String generateForgetPwdUrl(String code) {
		return "http://localhost:8080/javaBank/ForgetPwdActivateAction?code=" + code;
	}
}
