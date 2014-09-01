package com.iris.common.parser;

import com.googlecode.jcsv.reader.CSVEntryParser;
import com.iris.dataitem.bean.DataItem;

public class DataItemParser implements CSVEntryParser<DataItem> {

	@Override
	public DataItem parseEntry(String... dataItemString) {
		DataItem dataItem = null;
	    if (dataItemString.length != 9) {
	        System.err.println("CSV invalid");
		}else{
			dataItem = new DataItem();
			dataItem.setId(dataItemString[0]);
			dataItem.setName(dataItemString[1]);
			dataItem.setDescription(dataItemString[2]);
			dataItem.setDataItemType(dataItemString[3]);
			dataItem.setInputMode(dataItemString[4]);
			dataItem.setRegulatoryReportRquired(dataItemString[5].equals("TRUE"));
			dataItem.setLastUpdatedUser(dataItemString[6]);
			dataItem.setLastUpdationDate(dataItemString[7]);
			dataItem.setCategory(dataItemString[8]);
		}
		return dataItem;
	}

}
