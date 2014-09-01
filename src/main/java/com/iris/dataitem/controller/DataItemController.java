/**
 * @author iximqab
 */
package com.iris.dataitem.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iris.dataitem.bean.DataItemRepository;

/**
 * The prime class which handles the in and out request of the application
 * @author iximqab
 *
 */
@Controller
public class DataItemController {

	@Autowired	
	private MessageSource messageSource;
	
	/**
	 * Create report method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/data_item.htm", method = RequestMethod.GET)
	protected String createReportAction(ModelMap model, @ModelAttribute("reportVo") DataItemRepository reportVo, HttpServletRequest req, HttpServletResponse resp) {
		model.addAttribute("successMessage",null);
		return "data_item";
	}
	
	/**
	 * Save report method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/save_report.htm", method = RequestMethod.POST)
	protected String saveReportAction(ModelMap model, @ModelAttribute("reportVo") DataItemRepository reportVo, HttpServletRequest req, HttpServletResponse resp) {
		model.addAttribute("successMessage","Success");
		return "report_new";
	}
}