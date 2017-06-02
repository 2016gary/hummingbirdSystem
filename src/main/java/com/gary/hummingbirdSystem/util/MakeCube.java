package com.gary.hummingbirdSystem.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.apache.commons.codec.binary.Base64;

/**
 * Cube工具类
 * 
 * @author YD
 * 
 * @date 2017年6月2日
 */
public class MakeCube {
	static String baseURL = "http://192.168.0.68:7070/kylin/api/";

	static String ACCOUNT = "ADMIN";
	static String PWD = "KYLIN";

	public static String readJsonFile(String cubeDescFile) {

		File file = new File(cubeDescFile);
		BufferedReader reader = null;
		String laststr = "";
		try {
			// System.out.println("以行为单位读取文件内容，一次读一整行：");
			reader = new BufferedReader(new FileReader(file));
			String tempString = null;
			int line = 1;
			// 一次读入一行，直到读入null为文件结束
			while ((tempString = reader.readLine()) != null) {
				// 显示行号
				System.out.println("line " + line + ": " + tempString);
				laststr = laststr + tempString;
				line++;
			}
			reader.close();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (reader != null) {
				try {
					reader.close();
				} catch (IOException e1) {
				}
			}
		}

		// JSONObject jo=(JSONObject)
		// JSONObject.stringToValue(laststr);//格式化成json对象
		// return jo.toString();
		return laststr;
	}

	public static String createCube(String cubeDescFile) {
		String method = "POST";
		String para = "cubes";

		String cubeDescData = readJsonFile(cubeDescFile); // ??

		cubeDescData = cubeDescData.replaceAll("\"", "\\\\\"");
		cubeDescData = cubeDescData.replaceAll("[\r\n]", " ");
		cubeDescData = cubeDescData.trim();

		String body = "{" + "\"cubeDescData\":" + "\"" + cubeDescData + "\""
				+ ",\"cubeName\" : \"cube_LY_test0527\""
				+ ",\"project\" :  \"PROC_LYSPJS\"" + "}";

		return excute(para, method, body);
	}

	private static String excute(String para, String method, String body) {

		StringBuilder out = new StringBuilder();
		try {
			URL url = new URL(baseURL + para);
			HttpURLConnection connection = (HttpURLConnection) url
					.openConnection();
			connection.setRequestMethod(method);

			connection.setDoOutput(true);
			String auth = ACCOUNT + ":" + PWD;
			String encoding = new String(new Base64().encode(auth.getBytes()));
			connection.setRequestProperty("Authorization", "Basic " + encoding);
			connection.setRequestProperty("Content-Type", "application/json");
			if (body != null) {
				byte[] outputInBytes = body.getBytes("UTF-8");
				OutputStream os = connection.getOutputStream();
				os.write(outputInBytes);
				os.close();
			}
			InputStream content = (InputStream) connection.getInputStream();
			BufferedReader in = new BufferedReader(new InputStreamReader(
					content));
			String line;
			while ((line = in.readLine()) != null) {
				out.append(line);
			}
			in.close();
			connection.disconnect();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return out.toString();
	}
}
