package com.iris.profile.bean;

public class ProfileDetailsVo {

	private String profileId;
	
	private String profileName;
	
	private String environment;
	
	private String reportingEvent;
	
	private String hierarchy;
	
	private String valuationDate;

	private boolean saveSuccess;
	
	private String lastUpdatedUser;
	
	private String lastUpdationDate;
	
	public String getProfileId() {
		return profileId;
	}

	public void setProfileId(String profileId) {
		this.profileId = profileId;
	}

	public String getProfileName() {
		return profileName;
	}

	public void setProfileName(String profileName) {
		this.profileName = profileName;
	}

	public String getEnvironment() {
		return environment;
	}

	public void setEnvironment(String environment) {
		this.environment = environment;
	}

	public String getReportingEvent() {
		return reportingEvent;
	}

	public void setReportingEvent(String reportingEvent) {
		this.reportingEvent = reportingEvent;
	}

	public String getHierarchy() {
		return hierarchy;
	}

	public void setHierarchy(String hierarchy) {
		this.hierarchy = hierarchy;
	}

	public String getValuationDate() {
		return valuationDate;
	}

	public void setValuationDate(String valuationDate) {
		this.valuationDate = valuationDate;
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
