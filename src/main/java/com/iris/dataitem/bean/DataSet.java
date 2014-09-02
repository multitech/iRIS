package com.iris.dataitem.bean;

import java.util.List;

public class DataSet{

	private String categoryName;
	private List<DataItem> dataItems;
	
	public String getCategoryName() {
		return categoryName;
	}
	
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public List<DataItem> getDataItems() {
		return dataItems;
	}

	public void setDataItems(List<DataItem> dataItems) {
		this.dataItems = dataItems;
	}
	
	
}
