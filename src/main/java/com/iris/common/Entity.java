package com.iris.common;

public abstract class Entity {

	private String id;
	private String name;

	public String getId() {
		return id;
	}

	public void setId(String profileId) {
		this.id = profileId;
	}

	public String getName() {
		return name;
	}

	public void setName(String profileName) {
		this.name = profileName;
	}
	
}
