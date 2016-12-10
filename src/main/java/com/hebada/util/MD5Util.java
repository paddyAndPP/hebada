package com.hebada.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 对文件进行MD5.
 */
public class MD5Util {

	protected static char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e',
			'f' };

	protected static MessageDigest messagedigest = null;

	static {
		try {
			messagedigest = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException nsaex) {
			System.err.println(MD5Util.class.getName() + "初始化失败，MessageDigest不支持MD5Util。");
			nsaex.printStackTrace();
		}
	}

	/**
	 * 功能：加盐版的MD5.返回格式为MD5(密码+{盐值})
	 * 
	 * @param password
	 *            密码
	 * @param salt
	 *            盐值
	 * @return String
	 */
	public static String getMD5StringWithSalt(String password, String salt) {
		if (password == null) {
			throw new IllegalArgumentException("password不能为null");
		}
		if (null == salt || salt.isEmpty() ) {
			throw new IllegalArgumentException("salt不能为空");
		}
		if ((salt.toString().lastIndexOf("{") != -1) || (salt.toString().lastIndexOf("}") != -1)) {
			throw new IllegalArgumentException("salt中不能包含 { 或者 }");
		}
		return getMD5String(password + "{" + salt.toString() + "}");
	}

	/**
	 * 功能：得到文件的md5值。
	 * 
	 * @param file
	 *            文件。
	 * @return String
	 * @throws IOException
	 *             读取文件IO异常时。
	 */
	public static String getFileMD5String(File file) throws IOException {
		FileInputStream in = new FileInputStream(file);
		FileChannel ch = in.getChannel();
		MappedByteBuffer byteBuffer = ch.map(FileChannel.MapMode.READ_ONLY, 0, file.length());
		messagedigest.update(byteBuffer);
		return bufferToHex(messagedigest.digest());
	}

	/**
	 * 功能：得到一个字符串的MD5值。
	 * 
	 * @param str
	 *            字符串
	 * @return String
	 */
	public static String getMD5String(String str) {
		return getMD5String(str.getBytes());
	}

	private static String getMD5String(byte[] bytes) {
		messagedigest.update(bytes);
		return bufferToHex(messagedigest.digest());
	}

	private static String bufferToHex(byte bytes[]) {
		return bufferToHex(bytes, 0, bytes.length);
	}

	private static String bufferToHex(byte bytes[], int m, int n) {
		StringBuffer stringbuffer = new StringBuffer(2 * n);
		int k = m + n;
		for (int l = m; l < k; l++) {
			appendHexPair(bytes[l], stringbuffer);
		}
		return stringbuffer.toString();
	}

	private static void appendHexPair(byte bt, StringBuffer stringbuffer) {
		char c0 = hexDigits[(bt & 0xf0) >> 4];
		char c1 = hexDigits[bt & 0xf];
		stringbuffer.append(c0);
		stringbuffer.append(c1);
	}

	private static String byteArrayToHexString(byte b[]) {
		StringBuffer resultSb = new StringBuffer();
		for (int i = 0; i < b.length; i++)
			resultSb.append(byteToHexString(b[i]));

		return resultSb.toString();
	}

	private static int byteToHexString(byte b) {
		int n = b;
		if (n < 0)
			n += 256;
		int d1 = n / 16;
		int d2 = n % 16;
		return hexDigits[d1] + hexDigits[d2];
	}

	public static String MD5Encode(String origin, String charsetname) {
		String resultString = null;
		try {
			resultString = new String(origin);
			MessageDigest md = MessageDigest.getInstance("MD5");
			if (charsetname == null || "".equals(charsetname))
				resultString = byteArrayToHexString(md.digest(resultString.getBytes()));
			else
				resultString = byteArrayToHexString(md.digest(resultString.getBytes(charsetname)));
		} catch (Exception exception) {
		}
		return resultString;
	}

	/**
	 * 根据md5加密 加密key MD5(MD5($pwd + key))
	 * 
	 * @param str
	 * @return
	 */
	// 此方法在用 2016年11月17日11:01:36
	public static String getMD5KeyString(String str) {
		str = str + "hebada";
		return getMD5String(getMD5String(str.getBytes()).getBytes());
	}
}
