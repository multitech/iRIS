package com.iris.parser;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.iris.profile.bean.Profile;

public class ProfileParser {
	
	private static final String PROFILE_FILE_PATH = "src/main/resources/profileList.csv";
	
	public List<Profile> getTemproraryProfiles(){
		List<Profile> profileList = new ArrayList<>();
		profileList.addAll(fetchProfilesFromFile());
		return profileList;
	}

	private List<Profile> fetchProfilesFromFile() {
		File profileFile = new File(PROFILE_FILE_PATH);
		List<Profile> profileList = new ArrayList<>();
		String profileLine;
		try(BufferedReader reader = new BufferedReader(new FileReader(profileFile))){
			while((profileLine = reader.readLine())!=null){
				Profile profile = new Profile();
				String[] profileString = profileLine.split(",");
				profile.setProfileId(profileString[0]);
				profile.setProfileName(profileString[1]);
				profile.setEnvironment(profileString[2]);
				profile.setReportingEvent(profileString[3]);
				profile.setHierarchy(profileString[4]);
				profile.setValuationDate(profileString[5]);
				profileList.add(profile);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return profileList;
	}
}
