/**
 * @author iximqab
 */
package com.iris.dataitem.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.iris.dataitem.bean.DataItem;
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
	
	@Autowired
	private DataItemRepository dataItemRepository;
	
	/**
	 * View Data items method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/view_dataitem.htm", method = RequestMethod.GET)
	protected ModelAndView showDataItemViewAction(ModelMap model) {
		List<DataItem> dataset = dataItemRepository.getDataItems();
		ModelAndView modelView = new ModelAndView("dataitem_view", "dataitem", null);
		modelView.addObject("successMessage", null);
		modelView.addObject("dataset", dataset);
		return modelView;
	}
	
	/**
	 * View Data items method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/create_dataitem.htm", method = RequestMethod.GET)
	protected String showDataItemCreateAction(ModelMap model) {
		model.addAttribute("successMessage",null);
		return "dataitem";
	}
	
	/**
	 * Show data item
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/dataitem.htm", method = RequestMethod.GET)
	protected ModelAndView showConfigAction(ModelMap model,@RequestParam(value="index") int index) {
		List<DataItem> dataset = dataItemRepository.getDataItems();
		DataItem dataItem = dataset.get(index);
		ModelAndView modelView = new ModelAndView("dataitem", "dataItem", null);
		modelView.addObject("successMessage", null);
		modelView.addObject("dataItem", dataItem);
		return modelView;
	}
	
	/**
	 * Save Data item method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/save_dataitem.htm", method = RequestMethod.POST)
	protected String saveDataItemAction(ModelMap model, @ModelAttribute("reportVo") DataItemRepository reportVo, HttpServletRequest req, HttpServletResponse resp) {
		model.addAttribute("successMessage","Success");
		return "dataitem_view";
	}
}