package com.iris.common;

public abstract class Entity {

	private String id;
	private String name;
	private String description;
	private boolean saveSuccess;
	private String lastUpdatedUser;
	private String lastUpdationDate;
	
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
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isSaveSuccess() {
		return saveSuccess;
	}

	public void setSaveSuccess(boolean saveSuccess) {
		this.saveSuccess = saveSuccess;
	}

	public String getLastUpdatedUser() {
		return lastUpdatedUser;
	}

	public void setLastUpdatedUser(String lastUpdatedUser) {
		this.lastUpdatedUser = lastUpdatedUser;
	}

	public String getLastUpdationDate() {
		return lastUpdationDate;
	}

	public void setLastUpdationDate(String lastUpdationDate) {
		this.lastUpdationDate = lastUpdationDate;
	}
}
