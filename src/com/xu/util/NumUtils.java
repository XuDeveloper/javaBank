package com.xu.util;

import java.io.UnsupportedEncodingException;
import java.util.Random;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class NumUtils {

	private NumUtils() {

	}

	public static String getRandomAccountNum() {
		Random random = new Random();
		StringBuffer account = new StringBuffer();
		int max = 9;
		int min = 1;
		int a = random.nextInt(max) % (max - min + 1) + min;
		account.append(String.valueOf(a));
		for (int i = 0; i < 13; i++) {
			account.append(random.nextInt(10));
		}		
		return account.toString();
	}

	public static String getRandomCardNum() {
		Random random = new Random();
		StringBuffer card = new StringBuffer();
		int max = 9;
		int min = 1;
		int c = random.nextInt(max) % (max - min + 1) + min; 
		card.append(String.valueOf(c));
		for (int i = 0; i < 15; i++) {
			card.append(random.nextInt(10));
		}
		return card.toString();
	}
	
	// 加密  
    public static String getBase64(String str) {  
        byte[] b = null;  
        String s = null;  
        try {  
            b = str.getBytes("utf-8");  
        } catch (UnsupportedEncodingException e) {  
            e.printStackTrace();  
        }  
        if (b != null) {  
            s = new BASE64Encoder().encode(b);  
        }  
        return s;  
    }  
  
    // 解密  
    public static String getFromBase64(String s) {  
        byte[] b = null;  
        String result = null;  
        if (s != null) {  
            BASE64Decoder decoder = new BASE64Decoder();  
            try {  
                b = decoder.decodeBuffer(s);  
                result = new String(b, "utf-8");  
            } catch (Exception e) {  
                e.printStackTrace();  
            }  
        }  
        return result;  
    }  

}
