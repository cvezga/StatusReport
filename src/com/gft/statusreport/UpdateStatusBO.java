package com.gft.statusreport;

import java.util.HashMap;
import java.util.Map;

public class UpdateStatusBO extends AbstractBO {
	
	private FolderDAO dao;
	
	

	public UpdateStatusBO() {
		this.dao = new FolderDAO("C:\\Users\\crva\\Documents\\Status-Report-DATA");
	}



	public String mainLogic() {
		String user = getValue("member");
		String status = getValue("status");
		
		Map<String, String> values = new HashMap<String, String>();
		
		values.put("status", status);
		
		dao.save(user, values);
		
		setValue(user+"Status",status);
		
		return "index.jsp";
		
	}

	public String getStatus(String member){
		 Map<String,String> map = dao.read(member);
		 String status = map.get("status");
		 if(status==null){
			 status="";
		 }
		 return status;
	}


}
