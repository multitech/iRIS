/**
 * @author iximqab
 */
package com.iris.report.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iris.report.bean.ReportVo;

/**
 * The prime class which handles the in and out request of the application
 * @author iximqab
 *
 */
@Controller
public class ReportController {

	@Autowired	
	private MessageSource messageSource;
	
	/**
	 * Create report method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/create_report.htm", method = RequestMethod.GET)
	protected String createReportAction(ModelMap model, @ModelAttribute("reportVo") ReportVo reportVo, HttpServletRequest req, HttpServletResponse resp) {
		return "report_new";
	}
}