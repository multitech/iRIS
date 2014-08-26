package com.iris.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iris.login.bean.LoginVo;
import com.iris.notification.NotificationService;


@Controller
public class NotificationController {
	
	@Autowired
	private NotificationService notificationService;
	
	@RequestMapping(value = "/get-messages.htm", method = RequestMethod.GET)
	protected @ResponseBody String setMessages(ModelMap model, @ModelAttribute("loginVo") LoginVo loginVo, HttpServletRequest req, HttpServletResponse resp) {
		return notificationService.getNotificationMessageList();
	}


}
