package com.gft.statusreport;

import java.util.ArrayList;
import java.util.List;

public class ProjectMember {
	
	public String name;
	public List<Member> members;
	
	public ProjectMember(String name){
		this.name = name;
		this.members = new ArrayList<Member>();
	}
	
	public void add(String name, String role){
		this.members.add( new Member(name, role));
	}

	
}
