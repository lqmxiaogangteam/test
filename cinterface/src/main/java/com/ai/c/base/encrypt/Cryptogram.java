package com.ai.c.base.encrypt;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.security.*;

/**
 * @author guoxc
 * @create 2009-10-22
 */
public class Cryptogram {

	private static byte[] defaultIV = { 1, 2, 3, 4, 5, 6, 7, 8 };

	private static byte chr2hex(String chr) {
		if (chr.equals("0")) {
			return 0x00;
		} else if (chr.equals("1")) {
			return 0x01;
		} else if (chr.equals("2")) {
			return 0x02;
		} else if (chr.equals("3")) {
			return 0x03;
		} else if (chr.equals("4")) {
			return 0x04;
		} else if (chr.equals("5")) {
			return 0x05;
		} else if (chr.equals("6")) {
			return 0x06;
		} else if (chr.equals("7")) {
			return 0x07;
		} else if (chr.equals("8")) {
			return 0x08;
		} else if (chr.equals("9")) {
			return 0x09;
		} else if (chr.equals("A")) {
			return 0x0a;
		} else if (chr.equals("B")) {
			return 0x0b;
		} else if (chr.equals("C")) {
			return 0x0c;
		} else if (chr.equals("D")) {
			return 0x0d;
		} else if (chr.equals("E")) {
			return 0x0e;
		} else if (chr.equals("F")) {
			return 0x0f;
		}
		return 0x00;
	}

	public static byte[] HexStringToByteArray(String s) {
		byte[] buf = new byte[s.length() / 2];
		for (int i = 0; i < buf.length; i++) {
			buf[i] = (byte) (chr2hex(s.substring(i * 2, i * 2 + 1)) * 0x10 + chr2hex(s
					.substring(i * 2 + 1, i * 2 + 2)));
		}
		return buf;
	}

	/**
	 * Encrypt the data by the key.
	 * 
	 * @param OriSource
	 * @return strResult
	 * @throws Exception
	 */
	public static String encryptByKey(String OriSource, String key)
			throws Exception {

		String strResult = "";
		try {

			Cipher c3des = Cipher.getInstance("DESede/CBC/PKCS5Padding");
			SecretKeySpec myKey = new SecretKeySpec(HexStringToByteArray(key),
					"DESede");

			IvParameterSpec ivspec = new IvParameterSpec(defaultIV);
			c3des.init(Cipher.ENCRYPT_MODE, myKey, ivspec);

			byte[] testSrc = OriSource.getBytes();
			byte[] encoded = c3des.doFinal(testSrc);

			strResult = Base64Encrypt.getBASE64_byte(encoded);

		} catch (Exception e) {
			strResult = "";
			System.out.println("Encrypt failure!!!");
		}

		return strResult;
	}

	/**
	 * Encrypt the data by the key.
	 * 
	 * @param OriSource
	 * @return strResult
	 * @throws Exception
	 */
	public static String encryptByKey(byte[] testSrc, String key)
			throws Exception {

		String strResult = "";
		try {

			Cipher c3des = Cipher.getInstance("DESede/CBC/PKCS5Padding");
			SecretKeySpec myKey = new SecretKeySpec(HexStringToByteArray(key),
					"DESede");

			IvParameterSpec ivspec = new IvParameterSpec(defaultIV);
			c3des.init(Cipher.ENCRYPT_MODE, myKey, ivspec);

			byte[] encoded = c3des.doFinal(testSrc);

			strResult = Base64Encrypt.getBASE64_byte(encoded);

		} catch (Exception e) {
			strResult = "";
			System.out.println("Encrypt failure!!!");
		}

		return strResult;
	}

	/**
	 * Decrypt the encrypted data with the key.
	 * 
	 * @param strData
	 * @return strResult
	 * @throws Exception
	 */
	public static String decryptByKey(String encryptedData, String key)
			throws Exception {

		String strResult = "";
		try {

			Cipher c3des = Cipher.getInstance("DESede/CBC/PKCS5Padding");
			SecretKeySpec myKey = new SecretKeySpec(HexStringToByteArray(key),
					"DESede");

			IvParameterSpec ivspec = new IvParameterSpec(defaultIV);
			c3des.init(Cipher.DECRYPT_MODE, myKey, ivspec);

			byte[] s = Base64Encrypt.getByteArrFromBase64(encryptedData);
			byte[] encoded = c3des.doFinal(s);
			strResult = new String(encoded);

		} catch (Exception e) {
			strResult = "";
			System.out.println("Decrypt failure!!!");
		}

		return strResult;
	}

	/**
	 * Decrypt the encrypted data with the key.
	 * 
	 * @param strData
	 * @return strResult
	 * @throws Exception
	 */
	public static String getBase64HashString(String str) throws Exception {

		byte[] testSrc = str.getBytes();
		MessageDigest alga = MessageDigest.getInstance("SHA-1");
		alga.update(testSrc);
		byte[] digesta = alga.digest();
		return Base64Encrypt.getBASE64_byte(digesta);
	}

	/**
	 * base64(3DES(SHA1()))加密方法
	 * 
	 * @param key
	 * @param source
	 * @return
	 */
	public static String generateAuthenticator(String key, String source) {
		byte[] testSrc = source.getBytes();
		MessageDigest alga;
		try {
			alga = MessageDigest.getInstance("SHA-1");
			alga.update(testSrc);
			byte[] digesta = alga.digest();
			return encryptByKey(digesta, key);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 将二进制转换成16进制
	 * 
	 * @param buf
	 * @return
	 */
	public static String parseByte2HexStr(byte buf[]) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < buf.length; i++) {
			String hex = Integer.toHexString(buf[i] & 0xFF);
			if (hex.length() == 1) {
				hex = '0' + hex;
			}
			sb.append(hex.toUpperCase());
		}
		return sb.toString();
	}

	/**
	 * 生成密钥
	 * 
	 * @return
	 */
	public static String generateKey() {
		try {
			KeyGenerator keyGenerator = KeyGenerator.getInstance("DESede");// 3DES
			SecretKey key = keyGenerator.generateKey();
			byte[] keyBytes = key.getEncoded();
			String strKey = parseByte2HexStr(keyBytes);
			return strKey;
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void main(String args[]) throws Exception {
		String SysID = "0005";
		String TimeStamp = "2009-10-22 13:15:20";
		String ReturnURL = "http://vnet.cn/passportinterface/test2.aspx";
		String Key = "86A659D3035B51B1B66DF3139F1AEC33F6651334F1E65170";

		try {

			// Get Digest.
			String Digest = getBase64HashString(SysID + TimeStamp + ReturnURL);
			System.out.println("The Base64HashString data :" + Digest);

			// Get 3DES data.
			String EncryptStr = encryptByKey(TimeStamp + "$" + ReturnURL + "$"
					+ Digest, Key);

			System.out.println("The Encrypted data :" + EncryptStr);

			String DecryptStr = decryptByKey(EncryptStr, Key);

			System.out.println("The Decrypted data :" + DecryptStr);

			String miwen = "yFGYXfhoqgIEXVbsq5l7X6efpy+dqmIQwm4oWxVqvX0=";
			String keyLi = "180F228C317BDFB822D3C5E4AA157F915EBB25B8B20B4507";

			String ming = decryptByKey(miwen, keyLi);
			System.out.println("老李：" + ming);

			String ming2 = "abcABC!@#中文123";
			String mi2 = encryptByKey(ming2, keyLi);
			System.out.println("老李 auth:" + mi2);

			String syncMing = "350000000040720135000040720300480测试同步2012-06-18 15:33:00";
			Key = "180F228C317BDFB822D3C5E4AA157F915EBB25B8B20B4507";

			byte[] testSrc = ming2.getBytes();
			MessageDigest alga;
			try {
				alga = MessageDigest.getInstance("SHA-1");
				alga.update(testSrc);
				byte[] digesta = alga.digest();
				String syncMi = encryptByKey(digesta, Key);
				System.out.println("sync auth:" + syncMi);
			} catch (Exception e) {
				// TODO: handle exception
			}

			// 生成密钥
			String generatKey = generateKey();
			System.out.println("生成密钥:" + generatKey);
			
			System.out.println("=====================================");
			String token = "bN1KUUwsaDepapNS9Spy3yWcGSPbbmCrYqGap4cJrjsMWY0zRSO2jstoEKuw3TnUY0Hl8mD0N1g=";
			String key = "33F0C1E5A4976CBED949FEFDAF78C76441D4BD940A2C51E1";
			System.out.println("token:" + decryptByKey(token, key));
		} catch (Exception Ex) {
			Ex.printStackTrace();
		}
	}
}