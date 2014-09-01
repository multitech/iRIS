package com.iris.dataitem.bean;

import com.iris.common.Entity;

public class DataItem extends Entity{

	private String dataItemType;
	private String inputMode;
	private boolean regulatoryReportRquired;
	
	public String getDataItemType() {
		return dataItemType;
	}

	public void setDataItemType(String dataItemType) {
		this.dataItemType = dataItemType;
	}

	public String getInputMode() {
		return inputMode;
	}

	public void setInputMode(String inputMode) {
		this.inputMode = inputMode;
	}

	public boolean isRegulatoryReportRquired() {
		return regulatoryReportRquired;
	}

	public void setRegulatoryReportRquired(boolean regulatoryReportRquired) {
		this.regulatoryReportRquired = regulatoryReportRquired;
	}
	
}
