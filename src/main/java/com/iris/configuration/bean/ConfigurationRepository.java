package com.iris.configuration.bean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.iris.handler.ConfigurationHandler;

@Component
public class ConfigurationRepository {

	@Autowired
	private ConfigurationHandler handler;

	public List<Configuration> getConfigurations() {
		return handler.getValues();
	}

	public boolean saveConfiguration(Configuration configuration) {
		return handler.write(configuration);
	}
	
}
