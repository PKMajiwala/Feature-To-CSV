package com.srkaycg.pkmajiwala;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;

public class ExtractData {

	static String PATH_TO_FEATURE = "src/com/srkaycg/pkmajiwala/add_cabin.feature";
	static String PATH_TO_CSV = "src/com/srkaycg/pkmajiwala/data.csv";

	public static void main(String args[]) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader(PATH_TO_FEATURE));
		BufferedWriter brOutput = new BufferedWriter(new FileWriter(PATH_TO_CSV));
//		HashMap<String, String[]> outputData = new HashMap<>();
//		String ands = "";
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
				System.out.println("Comment");
			}
			if (line.contains("Scenario: ")) {
				scenario[i] += line.replace("Scenario: ", "") + "\n";
				System.out.println("scenario");
			}
			if (line.contains("Scenario Outline: ")) {
				scenario[i] += line.replace("Scenario Outline: ", "") + "\n";
				System.out.println("Scenario Outline");
			}
			if (line.contains("Given ")) {
				given[i] += line + "\n";
				System.out.println("Given");
			}
			if (line.contains("When ")) {
				when[i] += line + "\n";
				System.out.println("When");
			}
			if (line.contains("And ")) {
				if (flag == 1) {
					then[i] += line += "\n";
				} else {
					when[i] += line + "\n";
				}
				System.out.println("And");
			}
			if (line.contains("Then ")) {
				then[i] += line + "\n";
				System.out.println("Then");
				flag = 1;
			}
		}
		for (int j = 0; j <= i; j++) {
			brOutput.write(scenarioid[j].trim().replace("null", "") + ",");
			brOutput.write(scenario[j].trim().replace("null", "") + ",");
			brOutput.write(given[j].trim().replace("null", "") + ",");
			brOutput.write(when[j].trim().replace("null", "").replace("\n", "\n,,,") + ",");
//			brOutput.write(and[j].trim().replace("null", "") + ",");
			brOutput.write(then[j].trim().replace("null", "").replace("\n", "\n,,,,") + ",\n");

		}
		br.close();
		brOutput.close();
	}

}
