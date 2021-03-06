package com.iris.handler;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.List;

import org.springframework.stereotype.Component;

import com.googlecode.jcsv.reader.CSVEntryParser;
import com.googlecode.jcsv.reader.CSVReader;
import com.googlecode.jcsv.reader.internal.CSVReaderBuilder;
import com.iris.configuration.bean.Configuration;

@Component
public class ConfigurationHandler implements CSVEntryParser<Configuration>{
	
	private static final String CONFIG_FILE_PATH = "resources/configurationList.csv";

	public List<Configuration> getValues() {
		List<Configuration> configurationList = null;
		try {
			Reader reader = new InputStreamReader(this.getClass().getClassLoader().getResourceAsStream(CONFIG_FILE_PATH));
			CSVReader<Configuration> csvPersonReader = new CSVReaderBuilder<Configuration>(reader).entryParser(this).build();
			configurationList = csvPersonReader.readAll();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return configurationList;
	}
	
	public boolean write(Configuration configuration){
		try(BufferedWriter out = Files.newBufferedWriter(Paths.get(this.getClass().getClassLoader().getResource(CONFIG_FILE_PATH).toURI()), StandardCharsets.UTF_8, StandardOpenOption.APPEND)) {
			out.newLine();
			out.write(convertEntry(configuration));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (URISyntaxException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
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
		profileInfo.setDescription(profileValues[6]);
		profileInfo.setLastUpdatedUser(profileValues[7]);
		profileInfo.setLastUpdationDate(profileValues[8]);
		return profileInfo;
	}

	private String convertEntry(Configuration configuration) {
		StringBuilder configCsvBuilder = new StringBuilder();
		configCsvBuilder.append(configuration.getId())
		.append(",").append(configuration.getName())
		.append(",").append(configuration.getEnvironment())
		.append(",").append(configuration.getReportingEvent())
		.append(",").append(configuration.getHierarchy())
		.append(",").append(configuration.getValuationDate())
		.append(",").append(configuration.getDescription())
		.append(",").append(configuration.getLastUpdatedUser())
		.append(",").append(configuration.getLastUpdationDate());
/*		String[] configValues = new String[9];
		configValues[0] = configuration.getId();
		configValues[1] = configuration.getName();
		configValues[2] = configuration.getEnvironment();
		configValues[3] = configuration.getReportingEvent();
		configValues[4] = configuration.getHierarchy();
		configValues[5] = configuration.getValuationDate();
		configValues[6] = configuration.isSaveSuccess()==Boolean.TRUE? "TRUE" : "FALSE";
		configValues[7] = configuration.getLastUpdatedUser();
		configValues[8] = configuration.getLastUpdationDate();*/
		return configCsvBuilder.toString();
	}
}
