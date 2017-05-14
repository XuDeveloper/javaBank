package com.xu.util;

import java.util.Random;

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
		int c = random.nextInt(max) % (max - min + 1) + min; // 确保卡号首位不为零且两个号码首位不一定相同
		card.append(String.valueOf(c));
		for (int i = 0; i < 15; i++) {
			card.append(random.nextInt(10));
		}
		return card.toString();
	}

}
