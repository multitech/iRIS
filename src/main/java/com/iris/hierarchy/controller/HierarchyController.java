/**
 * @author iximqab
 */
package com.iris.hierarchy.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iris.hierarchy.bean.HierarchyDetailsVo;
import com.iris.hierarchy.bean.HierarchyVo;

/**
 * @author iximqab
 *
 */
@Controller
public class HierarchyController {

	@Autowired	
	private MessageSource messageSource;
	
	/**
	 * Show Hierarchy method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/view_hierarchy.htm", method = RequestMethod.GET)
	protected ModelAndView showHierarchyAction(ModelMap model) {
		HierarchyVo hierarchyVo=loadHierarchy();
		return new ModelAndView("hierarchy", "hierarchyVo", hierarchyVo);
	}

	/**
	 * Show Assignment matrix method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/view_assignment.htm", method = RequestMethod.GET)
	protected String showAssignmentMatrixAction(ModelMap model) {
		return "assignment";
	}
	
	private HierarchyVo loadHierarchy() {
		
		HierarchyVo hierarchyVo=new HierarchyVo();
		
		List<HierarchyDetailsVo> hierarchies = new ArrayList<>();

		HierarchyDetailsVo hierarchy1 = new HierarchyDetailsVo("Allianz","Allianz","Group",null,"EUR",null,false,false,true,"0");
		HierarchyDetailsVo hierarchy2 = new HierarchyDetailsVo("S0405","Eurovida","ConsGroup","Life","EUR","Y",true,true,false,"30");
		HierarchyDetailsVo hierarchy3 = new HierarchyDetailsVo("S0890","Amaya","ConsGroup","Life","EUR","Y",true,true,false,"30");
		HierarchyDetailsVo hierarchy4 = new HierarchyDetailsVo("AZFrance","AZFrance","SubGroup",null,"EUR",null,true,true,true,"30");
		HierarchyDetailsVo hierarchy5 = new HierarchyDetailsVo("RC340","Martin Maurel Vie, Paris","ConsGroup","Life","EUR","N",true,true,false,"60");
		HierarchyDetailsVo hierarchy6 = new HierarchyDetailsVo("RC040","Allianz IARD","ConsGroup","Composite","EUR","N",true,true,false,"60");
		HierarchyDetailsVo hierarchy7 = new HierarchyDetailsVo("S0669","Luxembourg","ConsGroup","Non-Life","EUR","Y",true,true,false,"60");
		HierarchyDetailsVo hierarchy8 = new HierarchyDetailsVo("AZItaly","AZItaly","SubGroup",null,"EUR",null,true,true,true,"30");
		HierarchyDetailsVo hierarchy9 = new HierarchyDetailsVo("S0477","CreditRAS","ConsGroup","Life","EUR","N",true,true,false,"60");
		
		
		hierarchies.add(hierarchy1);
		hierarchies.add(hierarchy2);
		hierarchies.add(hierarchy3);
		hierarchies.add(hierarchy4);
		hierarchies.add(hierarchy5);
		hierarchies.add(hierarchy6);
		hierarchies.add(hierarchy7);
		hierarchies.add(hierarchy8);
		hierarchies.add(hierarchy9);
		
		hierarchyVo.setHierarchies(hierarchies);
		
		return hierarchyVo;
	}
}