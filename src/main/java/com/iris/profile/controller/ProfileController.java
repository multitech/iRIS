/**
 * @author iximqab
 */
package com.iris.profile.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iris.profile.bean.Profile;

/**
 * The prime class which handles the in and out request of the application
 * @author iximqab
 *
 */
@Controller
public class ProfileController {

	@Autowired	
	private MessageSource messageSource;
	
	/**
	 * Create profile method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/profile.htm", method = RequestMethod.GET)
	protected String createProfileAction(ModelMap model, @ModelAttribute("profileVo") Profile profile, HttpServletRequest req, HttpServletResponse resp) {
		model.addAttribute("successMessage",null);
		return "configuration";
	}
	
	/**
	 * Save profile method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/save_profile.htm", method = RequestMethod.POST)
	protected String saveProfileAction(ModelMap model) {
		model.addAttribute("successMessage","Success");
		return "profile_new";
	}
	
}