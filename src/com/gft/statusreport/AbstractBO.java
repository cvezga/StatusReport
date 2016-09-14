package com.gft.statusreport;

import java.util.Map;

public abstract class AbstractBO implements BO {

	private Map<String, String[]> params;
	
	
	protected String getValue(String name){
		String[] value = this.params.get(name);
		if(value!=null && value.length==1){
			return value[0];
		}
		return "";
	}

	protected void setValue(String key, String value) {
		this.params.put(key, new String[]{value});
		
	}

	public void setParams(Map<String, String[]> params) {
		this.params = params;
	}


	public Map<String, String[]> getParams() {
		return this.params;
	}
	

	

}
