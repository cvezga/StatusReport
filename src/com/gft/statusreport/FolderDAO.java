package com.gft.statusreport;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class FolderDAO {

	private File path;

	public FolderDAO(String path) {
		this.path = new File(path);
	}

	public void save(String entity, Map<String, String> values) {
		File entityFile = new File(this.path, entity);

		try {
			StringBuilder data = new StringBuilder();
			for (Entry<String, String> entry : values.entrySet()) {
				data.append("<value>").append(entry.getKey()).append(":").append(entry.getValue()).append("</value>\n");
			}
			BufferedWriter bw = new BufferedWriter(new FileWriter(entityFile));
			bw.write(data.toString());
			bw.flush();
			bw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public Map<String,String> read(String entity){
		File entityFile = new File(this.path, entity);
		StringBuilder data = new StringBuilder();
		try {
			
			BufferedReader br = new BufferedReader(new FileReader(entityFile));
			String line;
			while((line=br.readLine())!=null){
				data.append(line).append("\n");
			}
			br.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return asMap(data.toString());
	}

	private Map<String, String> asMap(String data) {
		Map<String, String> map = new HashMap<String, String>();
		int idx = 0;
		while (idx < data.length()) {
			int p1 = data.indexOf("<value>", idx);
			int p2 = data.indexOf("</value>", p1);
			if (p1 > -1 && p1 < p2) {
				String item = data.substring(p1 + 7, p2);
				int p3 = item.indexOf(":");
				if (p3 > -1) {
					String key = item.substring(0, p3);
					String value = item.substring(p3 + 1);
					map.put(key, value);
				}
			} else {
				break;
			}
			idx = p2 + 8;
		}
		return map;
	}

}
