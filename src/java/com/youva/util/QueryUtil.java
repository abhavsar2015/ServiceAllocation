package com.youva.util;

import java.io.File;
import java.io.FileInputStream;
import java.util.Properties;

public class QueryUtil {

	private static Properties queries;

	private QueryUtil() {
	}

	static {

		try {
			queries = new Properties();
			System.out.println(queries);
			System.out.println(new File(".").getCanonicalPath());
			queries.load(new FileInputStream(
					new File(
							"D:\\Users\\Apurv\\Desktop\\aph\\src\\java\\Query.properties")));
			System.out.println("q" + queries);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	public static String getQuery(String key) {
		return queries.get(key) == null ? "" : (String) queries.get(key);
	}
}
