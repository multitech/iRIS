package com.iris.dataitem.bean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.iris.handler.DataItemHandler;

@Component
public class DataItemRepository {

	@Autowired
	private DataItemHandler handler;
	
	public List<DataItem> getDataItems() {
		return handler.getValues();
	}

	public boolean saveDataItem(DataItem dataItem){
		return handler.write(dataItem);
	}
	
}
