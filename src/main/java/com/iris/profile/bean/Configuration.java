package com.iris.profile.bean;

import com.iris.common.BaseInfo;

public class Configuration extends BaseInfo{

	private boolean saveSuccess;
	private String lastUpdatedUser;
	private String lastUpdationDate;

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
