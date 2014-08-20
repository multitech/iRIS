package com.iris.login.bean;

public class LoginVo {

	private String userName;
	
	private String password;
	
	private String environment;
	
	private String reportingEvent;
	
	private String hierarchy;
	
	private String valuationDate;

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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
