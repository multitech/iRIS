package com.iris.report.bean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.iris.handler.DataItemHandler;

public class DataItemRepository {

	@Autowired
	private DataItemHandler handler;
	
	public List<DataItem> getDataItems() {
		return handler.fetchDataItemsFromFile();
	}

	public boolean saveDataItem(DataItem dataItem){
		return handler.write(dataItem);
	}
	
}
