/**
 * @author iximqab
 */
package com.iris.configuration.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.iris.configuration.bean.Configuration;
import com.iris.configuration.bean.ConfigurationRepository;

/**
 * The prime class which handles the in and out request of the application
 * @author iximqab
 *
 */
@Controller
public class ConfigurationController {

	@Autowired	
	private MessageSource messageSource;
	
	@Autowired
	private ConfigurationRepository configurationRepository;
	
	/**
	 * View profile method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/view_config.htm", method = RequestMethod.GET)
	protected ModelAndView showConfigViewAction(ModelMap model,HttpServletRequest req) {
		List<Configuration> configurations = configurationRepository.getConfigurations();
		ModelAndView modelView = new ModelAndView("config_view", "configuration", null);
		modelView.addObject("successMessage", null);
		modelView.addObject("configurationList", configurations);
		String activeConfig = (String) req.getSession().getAttribute("activeConfigName");
		modelView.addObject("activeConfigName", activeConfig);
		return modelView;
	}
	
	
	/**
	 * Create profile method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/create_config.htm", method = RequestMethod.GET)
	protected String showConfigCreateAction(ModelMap model) {
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
	@RequestMapping(value = "/config.htm", method = RequestMethod.GET)
	protected ModelAndView showConfigAction(ModelMap model,@RequestParam(value="index") int index,HttpServletRequest req) {
		List<Configuration> configurations = configurationRepository.getConfigurations();
		Configuration configuration = configurations.get(index);
		ModelAndView modelView = new ModelAndView("config", "configuration", null);
		modelView.addObject("successMessage", null);
		modelView.addObject("configuration", configuration);
		String activeConfig = (String) req.getSession().getAttribute("activeConfigName");
		modelView.addObject("activeConfigName", activeConfig);
		return modelView;
	}
	
	/**
	 * Save profile method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/activate_config.htm", method = RequestMethod.GET)
	public @ResponseBody String saveConfigAction(HttpServletRequest req, @RequestParam(value="index") int index) {
		List<Configuration> configurations = configurationRepository.getConfigurations();
		Configuration configuration = configurations.get(index);
		req.getSession().setAttribute("activeConfigName", configuration.getName());
		return configuration.getName();
	}
	
	/**
	 * Save profile method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/save_config.htm", method = RequestMethod.POST)
	protected String saveConfigAction(ModelMap model) {
		model.addAttribute("successMessage","Success");
		return "config";
	}
	
}