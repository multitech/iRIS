package com.iris.dataitem.bean;

import java.util.List;

import com.iris.common.Entity;

public class DataItem extends Entity{

	private String category;
	private String dataItemType;
	private int inputMode;
	private String inputModeDescription;
	private boolean regulatoryReportRquired;
	private List<String> dependencies;
	private int status;
	private String statusDescription;
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDataItemType() {
		return dataItemType;
	}

	public void setDataItemType(String dataItemType) {
		this.dataItemType = dataItemType;
	}

	public int getInputMode() {
		return inputMode;
	}

	public void setInputMode(int inputMode) {
		this.inputMode = inputMode;
	}

	public String getInputModeDescription() {
		return inputModeDescription;
	}

	public void setInputModeDescription(String inputModeDescription) {
		this.inputModeDescription = inputModeDescription;
	}

	public boolean isRegulatoryReportRquired() {
		return regulatoryReportRquired;
	}

	public void setRegulatoryReportRquired(boolean regulatoryReportRquired) {
		this.regulatoryReportRquired = regulatoryReportRquired;
	}

	public List<String> getDependencies() {
		return dependencies;
	}

	public void setDependencies(List<String> dependencies) {
		this.dependencies = dependencies;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getStatusDescription() {
		return statusDescription;
	}

	public void setStatusDescription(String statusDescription) {
		this.statusDescription = statusDescription;
	}
	
}
