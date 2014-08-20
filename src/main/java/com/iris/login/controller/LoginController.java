/**
 * @author iximqab
 */
package com.iris.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iris.login.bean.LoginVo;
import com.iris.login.service.LoginService;

/**
 * The login action class
 * @author iximqab
 *
 */
@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@Autowired	
	private MessageSource messageSource;
	
	/**
	 * Entry point method to the application
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/login.htm", method = RequestMethod.GET)
	protected String viewLoginAction(ModelMap model, @ModelAttribute("loginVo") LoginVo loginVo, HttpServletRequest req, HttpServletResponse resp) {
		return "login";
	}
	
	/**
	 * This method will be called when the user clicks on the login button after entering the user name and password
	 * @param model
	 * @param login
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/login_submit.htm", method = RequestMethod.POST)
	public ModelAndView loginAction(ModelMap model, @ModelAttribute("loginVo") LoginVo loginVo, HttpSession session) {
		boolean ldapResult=loginService.ldapAuthentication(loginVo);
		if(ldapResult){
			return new ModelAndView("homepage", "home", null);
		}else{
			model.addAttribute("loginMessage",messageSource.getMessage("login.message.notAuthorized", null, LocaleContextHolder.getLocale()));
			return new ModelAndView("login", "login", new LoginVo());
		}
	}

}