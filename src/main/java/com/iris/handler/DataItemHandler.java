package com.iris.handler;

import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.List;

import com.googlecode.jcsv.reader.CSVEntryParser;
import com.googlecode.jcsv.reader.CSVReader;
import com.googlecode.jcsv.reader.internal.CSVReaderBuilder;
import com.iris.dataitem.bean.DataItem;

public class DataItemHandler implements CSVEntryParser<DataItem>{

	private static final String DATA_FILE_PATH = "resources/dataItemsList.csv";
	
	public List<DataItem> getValues() {
		List<DataItem> dataItemsList = null;
		try {
			Reader reader = new FileReader(DATA_FILE_PATH);
			CSVReader<DataItem> csvPersonReader = new CSVReaderBuilder<DataItem>(reader).entryParser(this).build();
			dataItemsList = csvPersonReader.readAll();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return dataItemsList;
	}
	
	public boolean write(DataItem dataItem){
		try(BufferedWriter out = Files.newBufferedWriter(Paths.get(DATA_FILE_PATH), StandardCharsets.UTF_8, StandardOpenOption.APPEND)) {
			out.newLine();
			out.write(convertEntry(dataItem));
		} catch (IOException e) {
			e.printStackTrace();
		}
		return true;
	}

	@Override
	public DataItem parseEntry(String... dataItemString) {
		String[] dataItemValues = dataItemString[0].split(",");
		DataItem dataItem = new DataItem();
		dataItem.setId(dataItemValues[0]);
		dataItem.setName(dataItemValues[1]);
		dataItem.setEnvironment(dataItemValues[2]);
		dataItem.setReportingEvent(dataItemValues[3]);
		dataItem.setHierarchy(dataItemValues[4]);
		dataItem.setValuationDate(dataItemValues[5]);
		dataItem.setDataItemType(dataItemValues[6]);
		return dataItem;
	}
	
	private String convertEntry(DataItem dataItem) {
		StringBuilder dataItemCsvBuilder = new StringBuilder();
		dataItemCsvBuilder.append(dataItem.getId())
		.append(",").append(dataItem.getName())
		.append(",").append(dataItem.getEnvironment())
		.append(",").append(dataItem.getReportingEvent())
		.append(",").append(dataItem.getHierarchy())
		.append(",").append(dataItem.getValuationDate())
		.append(",").append(dataItem.getDataItemType());
		return dataItemCsvBuilder.toString();
	}

}
