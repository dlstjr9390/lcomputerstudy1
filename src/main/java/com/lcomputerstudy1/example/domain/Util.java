package com.lcomputerstudy1.example.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Util {
	public String randomName() {
		String randomName = null;
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		int RandomNumber = (int)(Math.random()*99999);
		Date time = new Date();
		String time1 = df.format(time);
		
		randomName = time1 + String.valueOf(RandomNumber);
		
		return randomName;
	}
	
	public String getExtention(String string) {
		String ext = string.substring(string.lastIndexOf(".") + 1);
		
		return ext;
		
	}
}
