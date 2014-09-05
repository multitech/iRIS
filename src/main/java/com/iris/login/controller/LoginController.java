/**
 * @author iximqab
 */
package com.iris.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iris.login.bean.LoginVo;
import com.iris.login.service.LoginService;
import com.iris.notification.NotificationMessage;
import com.iris.notification.NotificationService;
import com.iris.notification.NotificationTask;

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
	
	@Autowired
	private NotificationService notificationService;
	
	/**
	 * Entry point method to the application
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/login.htm", method = RequestMethod.GET)
	protected ModelAndView  viewLoginAction(ModelMap model, @ModelAttribute("loginVo") LoginVo loginVo, HttpServletRequest req, HttpServletResponse resp) {
		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("login");
		return modelView;
	}
	
	/**
	 * This method will be called when the user clicks on the login button after entering the user name and password
	 * @param model
	 * @param login
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/login_welcome.htm", method = RequestMethod.GET)
	public ModelAndView loginAction(ModelMap model, @ModelAttribute("loginVo") LoginVo loginVo, HttpSession session) {
		
		ModelAndView modelView = new ModelAndView("homepage", "home", null);
		User activeUser = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(activeUser.getUsername().equals("admin")){
			modelView.addObject("displayName", "Kobayashi Maru");
			modelView.addObject("displayImage", "img/admin.png");
		}else{
			modelView.addObject("displayName", "Cersei Lannister");
			modelView.addObject("displayImage", "img/analyst.png");
		}
		notificationService.getAllTasks().clear();
		notificationService.getAllMessages().clear();
		NotificationMessage message = new NotificationMessage();
		message.setFrom("Vasco Fort");
		message.setMessage("Please approve new Upload");
		message.setSubject("New Upload");
		message.setTo("Admin");
		notificationService.addMessage(message);
		NotificationTask task = new NotificationTask();
		task.setDescription("Generate Market Risk Reports");
		task.setPercentage("80%");
		task.setStatusMessage("In Progress");
		notificationService.addTask(task );
		return modelView;
	}
}