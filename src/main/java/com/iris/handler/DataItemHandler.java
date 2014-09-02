package com.iris.handler;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.List;

import org.springframework.stereotype.Component;

import com.googlecode.jcsv.reader.CSVEntryParser;
import com.googlecode.jcsv.reader.CSVReader;
import com.googlecode.jcsv.reader.internal.CSVReaderBuilder;
import com.iris.dataitem.bean.DataItem;

@Component
public class DataItemHandler implements CSVEntryParser<DataItem>{

	private static final String DATA_FILE_PATH = "resources/dataItemsList.csv";
	
	public List<DataItem> getValues() {
		List<DataItem> dataItemsList = null;
		try {
			Reader reader = new InputStreamReader(this.getClass().getClassLoader().getResourceAsStream(DATA_FILE_PATH));
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
	public DataItem parseEntry(String... dataItems) {
		//String[] dataItems = dataItemString[0].split(",");
		DataItem dataItem = new DataItem();
		dataItem.setId(dataItems[0]);
		dataItem.setName(dataItems[1]);
		dataItem.setDescription(dataItems[2]);
		dataItem.setDataItemType(dataItems[3]);
		dataItem.setInputMode(dataItems[4]);
		dataItem.setRegulatoryReportRquired(dataItems[5].equals("TRUE"));
		dataItem.setLastUpdatedUser(dataItems[6]);
		dataItem.setLastUpdationDate(dataItems[7]);
		dataItem.setCategory(dataItems[8]);
		return dataItem;
	}
	
	private String convertEntry(DataItem dataItem) {
		StringBuilder dataItemCsvBuilder = new StringBuilder();
		dataItemCsvBuilder.append(dataItem.getId())
		.append(",").append(dataItem.getName())
		.append(",").append(dataItem.getDescription())
		.append(",").append(dataItem.getDataItemType())
		.append(",").append(dataItem.getInputMode())
		.append(",").append(dataItem.isRegulatoryReportRquired()?"TRUE":"FALSE")
		.append(",").append(dataItem.getLastUpdatedUser())
		.append(",").append(dataItem.getLastUpdationDate())
		.append(",").append(dataItem.getCategory());
		return dataItemCsvBuilder.toString();
	}

}
