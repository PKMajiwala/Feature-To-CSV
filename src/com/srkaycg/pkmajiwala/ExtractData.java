package com.srkaycg.pkmajiwala;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class ExtractData {

	static String PATH_TO_FEATURE = "src/com/srkaycg/pkmajiwala/add_cabin.feature";
	static String PATH_TO_CSV = "src/com/srkaycg/pkmajiwala/data.csv";

	public static void main(String args[]) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader(PATH_TO_FEATURE));
		BufferedWriter brOutput = new BufferedWriter(new FileWriter(PATH_TO_CSV));
		String ands = "";

		String line = new String();
		brOutput.write("Scenario ID, Scenario, Given, When, Then\n");
		while ((line = br.readLine()) != null) {
			String data[] = line.split(" ");
			StringBuilder Ands = new StringBuilder(100);
			if (line.contains("Feature:")) {
				for (String text : data) {
					if (!text.contains("Feature:"))
						brOutput.write(text);
				}
				brOutput.write(", " + " \n");
			} else if (line.contains("#")) {
				brOutput.write(ands);
				ands="";
				for (String text : data) {
					if (!text.contains("#"))
						brOutput.write(text + " ");
				}
				brOutput.write(", ");
			} else if (line.contains("Scenario:")) {
				for (String text : data) {
					if (!text.contains("Scenario:"))
						brOutput.write(text + " ");
				}
				brOutput.write(", ");
			} else if (line.contains("Scenario Outline:")) {
				for (String text : data) {
					if (!text.contains("Scenario Outline:"))
						brOutput.write(text + " ");
				}
				brOutput.write(", ");
			} else if (line.contains("Given")) {
				for (String text : data) {

					brOutput.write(text + " ");
				}
				brOutput.write(", ");
			} else if (line.contains("When")) {
				for (String text : data) {

					brOutput.write(text + " ");
				}
				brOutput.write(", ");
			} else if (line.contains("And")) {
				Ands.append(", , , ");
				for (String text : data) {

					Ands.append(text + " ");
				}
				Ands.append(", \n");
				ands += Ands.toString();
			} else if (line.contains("Then")) {
				for (String text : data) {

					brOutput.write(text + " ");
				}

				brOutput.write(", \n");
				brOutput.write(ands);
				ands="";
			}

		}

		br.close();
		brOutput.close();
	}

}
