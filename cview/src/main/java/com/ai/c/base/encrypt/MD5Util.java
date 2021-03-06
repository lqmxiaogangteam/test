package com.ai.c.base.encrypt;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/**
 * @author LiuQianMing
 * @create 2015-01-05
 */
public class MD5Util {
	 // 全局数组
	private final static String[] strDigits = { "0", "1", "2", "3", "4", "5",
            "6", "7", "8", "9", "a", "b", "c", "d", "e", "f" };
	/**
	 * MD5加密算法不可逆
	 */
	 public final static String MD5(String s) {
		
	        char hexDigits[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};       
	        try {
	            byte[] btInput = s.getBytes();
	            // 获得MD5摘要算法的 MessageDigest 对象
	            MessageDigest mdInst = MessageDigest.getInstance("MD5");
	            // 使用指定的字节更新摘要
	            mdInst.update(btInput);
	            // 获得密文
	            byte[] md = mdInst.digest();
	            // 把密文转换成十六进制的字符串形式
	            int j = md.length;
	            char str[] = new char[j * 2];
	            int k = 0;
	            for (int i = 0; i < j; i++) {
	                byte byte0 = md[i];
	                str[k++] = hexDigits[byte0 >>> 4 & 0xf];
	                str[k++] = hexDigits[byte0 & 0xf];
	            }
	            return new String(str);
	        } catch (Exception e) {
	            e.printStackTrace();
	            return null;
	        }
	    }
	 // 返回形式为数字跟字符串
	    private static String byteToArrayString(byte bByte) {
	        int iRet = bByte;
	        // System.out.println("iRet="+iRet);
	        if (iRet < 0) {
	            iRet += 256;
	        }
	        int iD1 = iRet / 16;
	        int iD2 = iRet % 16;
	        return strDigits[iD1] + strDigits[iD2];
	    }

	    // 返回形式只为数字
	    private static String byteToNum(byte bByte) {
	        int iRet = bByte;
	        System.out.println("iRet1=" + iRet);
	        if (iRet < 0) {
	            iRet += 256;
	        }
	        return String.valueOf(iRet);
	    }

	    // 转换字节数组为16进制字串
	    private static String byteToString(byte[] bByte) {
	        StringBuffer sBuffer = new StringBuffer();
	        for (int i = 0; i < bByte.length; i++) {
	            sBuffer.append(byteToArrayString(bByte[i]));
	        }
	        return sBuffer.toString();
	    }

	    public static String GetMD5Code(String strObj) {
	        String resultString = null;
	        try {
	            resultString = new String(strObj);
	            MessageDigest md = MessageDigest.getInstance("MD5");
	            // md.digest() 该函数返回值为存放哈希值结果的byte数组
	            resultString = byteToString(md.digest(strObj.getBytes()));
	        } catch (NoSuchAlgorithmException ex) {
	            ex.printStackTrace();
	        }
	        return resultString;
	    }
	 // MD5加码。32位    
	    public static String MD532(String inStr) {    
	     MessageDigest md5 = null;    
	     try {    
	      md5 = MessageDigest.getInstance("MD5");    
	     } catch (Exception e) {    
	      System.out.println(e.toString());    
	      e.printStackTrace();    
	      return "";    
	     }    
	     char[] charArray = inStr.toCharArray();    
	     byte[] byteArray = new byte[charArray.length];    
	      
	     for (int i = 0; i < charArray.length; i++)    
	      byteArray[i] = (byte) charArray[i];    
	     byte[] md5Bytes = md5.digest(byteArray);    
	     StringBuffer hexValue = new StringBuffer();    
	     for (int i = 0; i < md5Bytes.length; i++) {    
	      int val = ((int) md5Bytes[i]) & 0xff;    
	      if (val < 16)    
	       hexValue.append("0");    
	      hexValue.append(Integer.toHexString(val));    
	     }    
	      
	     return hexValue.toString();    
	    }    
	    // 可逆的加密算法    
	    public static String KL(String inStr) {    
	     // String s = new String(inStr);    
	     char[] a = inStr.toCharArray();    
	     for (int i = 0; i < a.length; i++) {    
	      a[i] = (char) (a[i] ^ 't');    
	     }    
	     String s = new String(a);    
	     return s;    
	    }    
	    // 加密后解密    
	    public static String JM(String inStr) {    
	     char[] a = inStr.toCharArray();    
	     for (int i = 0; i < a.length; i++) {    
	      a[i] = (char) (a[i] ^ 't');    
	     }    
	     String k = new String(a);    
	     return k;    
	    }    





}
