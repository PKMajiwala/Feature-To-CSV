package com.srkaycg.pkmajiwala;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.supercsv.io.CsvListWriter;
import org.supercsv.io.ICsvListWriter;
import org.supercsv.prefs.CsvPreference;

public class ExtractData {

	static String PATH_TO_FEATURE = "src/com/srkaycg/pkmajiwala/add_cabin.feature";
	static String PATH_TO_CSV = "src/com/srkaycg/pkmajiwala/data.csv";

	public static StringWriter writeHashMapToCsv(HashMap<Integer, String> map) throws Exception {

	    StringWriter output = new StringWriter();
	    try (ICsvListWriter listWriter = new CsvListWriter(output, 
	         CsvPreference.STANDARD_PREFERENCE)){
	    	listWriter.write(map.get(1),map.get(2),map.get(3),map.get(4),map.get(5));
	    }

	   return output;
	}
	
	public static void main(String args[]) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader(PATH_TO_FEATURE));
		BufferedWriter brOutput = new BufferedWriter(new FileWriter(PATH_TO_CSV));
		ArrayList<HashMap<Integer, String>> outputData = new ArrayList<HashMap<Integer, String>>();
		String line = new String();
		String[] feature = new String[100];
		String[] scenario = new String[100];
		String[] scenarioid = new String[100];
		String[] given = new String[100];
		String[] when = new String[100];
		String[] then = new String[100];
		int flag = 0;

		brOutput.write("Scenario ID, Scenario, Given, When, Then\n");
		int i = -1;
		while ((line = br.readLine()) != null) {
			if (line.contains("Feature: ")) {
				feature[0] += line.replace("Feature:", "") + "\n";
				System.out.println("Feature");
			}
			if (line.contains("# ")) {
				flag = 0;
				scenarioid[++i] += line.replace("# ", "") + "\n";
				System.out.println("Comment" + line);
			}
			if (line.contains("Scenario: ")) {
				scenario[i] += line.replace(",", "-").replace("Scenario: ", "") + "\n";
				System.out.println("scenario" + line);
			}
			if (line.contains("Scenario Outline: ")) {
				scenario[i] += line.replace(",", "-").replace("Scenario Outline: ", "") + "\n";
				System.out.println("Scenario Outline" + line);
			}
			if (line.contains("Given ")) {
				given[i] += line.replace(",", "-") + "\n";
				System.out.println("Given" + line.replace(",", "-"));
			}
			if (line.contains("When ")) {
				when[i] += line.replace(",", "-") + "\n";
				System.out.println("When" + line.replace(",", "-"));
			}
			if (line.contains("And ")) {
				if (flag == 1) {
					then[i] += line.replace(",", "-") + "\n";
				} else {
					when[i] += line.replace(",", "-") + "\n";
				}
				System.out.println("And" + line);
			}
			if (line.contains("Then ")) {
				then[i] += line.replace(",", "-") + "\n";
				System.out.println("Then" + line);
				flag = 1;
			}
		}
		System.out.println("----------------MAp" + "--------------------------");
		HashMap<Integer, String> map = new HashMap<>();
		for (int j = 0; j <= i; j++) {
			try {
				map.put(1,scenarioid[j].trim().replace("null", ""));
			} catch (Exception e) {
				map.put(1,"");
			}
			try {
				map.put(2, scenario[j].trim().replace("null", ""));
			} catch (Exception e) {
				map.put(2,"");
			}
			try {
				map.put(3, given[j].trim().replace("null", ""));
			} catch (Exception e) {
				map.put(3,"");
			}
			try {
				map.put(4, when[j].trim().replace("null", ""));
			} catch (Exception e) {
				map.put(4,"");
			}
			try {
				map.put(5, then[j].trim().replace("null", ""));
			} catch (Exception e) {
				map.put(5,"");
			}
			System.out.println(map.toString());
			try {
				brOutput.write(writeHashMapToCsv(map).toString());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			map.clear();
			
		}
		br.close();
		brOutput.close();
	}

}
