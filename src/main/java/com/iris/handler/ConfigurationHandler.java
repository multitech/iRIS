package com.iris.handler;

import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.List;

import com.googlecode.jcsv.reader.CSVEntryParser;
import com.googlecode.jcsv.reader.CSVReader;
import com.googlecode.jcsv.reader.internal.CSVReaderBuilder;
import com.iris.profile.bean.Configuration;

public class ConfigurationHandler implements CSVEntryParser<Configuration>{
	
	private static final String CONFIG_FILE_PATH = "src/main/resources/configurationList.csv";

	public List<Configuration> getValues() {
		List<Configuration> profileList = null;
		try {
			Reader reader = new FileReader(CONFIG_FILE_PATH);
			CSVReader<Configuration> csvPersonReader = new CSVReaderBuilder<Configuration>(reader).entryParser(this).build();
			profileList = csvPersonReader.readAll();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return profileList;
	}
	
	public boolean write(Configuration configuration){
		return true;
	}

	@Override
	public Configuration parseEntry(String... profileString) {
		//profileString should be an array. Wonder why it is not.. for another day
		String[] profileValues = profileString[0].split(",");
		Configuration profileInfo = new Configuration();
		profileInfo.setId(profileValues[0]);
		profileInfo.setName(profileValues[1]);
		profileInfo.setEnvironment(profileValues[2]);
		profileInfo.setReportingEvent(profileValues[3]);
		profileInfo.setHierarchy(profileValues[4]);
		profileInfo.setValuationDate(profileValues[5]);
		profileInfo.setSaveSuccess(profileValues[6].equals("TRUE"));
		profileInfo.setLastUpdatedUser(profileValues[7]);
		profileInfo.setLastUpdationDate(profileValues[8]);
		return profileInfo;
	}
}
