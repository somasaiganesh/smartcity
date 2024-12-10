package com.klef.jfsd.controller;

import java.util.Random;

public class OtpUtil
{
	private static String generatedOTP;

    public static String generateOTP() {
        // Logic to generate a random OTP (4 digits in this case)
        Random random = new Random();
        int otpValue = 1000 + random.nextInt(9000);
        generatedOTP = Integer.toString(otpValue);
        return generatedOTP;
    }

    public static String getGeneratedOTP() {
        return generatedOTP;
    }

}
