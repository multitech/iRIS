/**
 * @author iximqab
 */
package com.iris.configuration.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * The prime class which handles the in and out request of the application
 * @author iximqab
 *
 */
@Controller
public class ConfigurationController {

	@Autowired	
	private MessageSource messageSource;
	
	/**
	 * View profile method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/view_config.htm", method = RequestMethod.GET)
	protected String createProfileAction(ModelMap model) {
		model.addAttribute("successMessage",null);
		return "config_view";
	}
	
	
	/**
	 * Create profile method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/create_config.htm", method = RequestMethod.GET)
	protected String createConfigurationAction(ModelMap model) {
		model.addAttribute("successMessage",null);
		return "config";
	}
	
	/**
	 * Save profile method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/save_config.htm", method = RequestMethod.POST)
	protected String saveProfileAction(ModelMap model) {
		model.addAttribute("successMessage","Success");
		return "config";
	}
	
}