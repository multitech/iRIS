/**
 * @author iximqab
 */
package com.iris.dashboard.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iris.dataitem.bean.DataItem;
import com.iris.dataitem.bean.DataItemRepository;
import com.iris.dataitem.bean.DataSet;
import com.iris.hierarchy.bean.HierarchyDetailsVo;
import com.iris.hierarchy.bean.HierarchyVo;

/**
 * @author iximqab
 *
 */
@Controller
public class DashboardController {

	@Autowired	
	private MessageSource messageSource;
	
	@Autowired
	private DataItemRepository dataItemRepository;
	
	/**
	 * Show Dashboard method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/dashboard.htm", method = RequestMethod.GET)
	protected ModelAndView showHierarchyAction(ModelMap model) {
		HierarchyVo hierarchyVo=loadHierarchy();
		List<DataItem> dataItems = dataItemRepository.getDataItems();
		List<DataSet> dataset = groupDataItems(dataItems);
		ModelAndView modelView = new ModelAndView("dashboard", "dashboard", null);
		modelView.addObject("hierarchy", hierarchyVo);
		modelView.addObject("dataset", dataset);
		modelView.addObject("dataitems", dataItems);
		return modelView;
	}

	private List<DataSet> groupDataItems(List<DataItem> dataItems) {
		
		List<DataSet> datasetList=new ArrayList<DataSet>();
		Set<String> dataItemSet=new LinkedHashSet<String>();
		for(DataItem dataItem:dataItems){
			dataItemSet.add(dataItem.getCategory());
		}
		
		DataSet dataSet=null;
		List<DataItem> dataItemList=null;
		
		Iterator<String> dataItemIterator = dataItemSet.iterator();
		while(dataItemIterator.hasNext()){
			String category = dataItemIterator.next();
			dataSet=new DataSet();
			dataItemList=new ArrayList<DataItem>();
			for(DataItem dataItem:dataItems){
				if(dataItem.getCategory().equals(category)){
					dataItemList.add(dataItem);
				}
			}
			dataSet.setCategoryName(category);
			dataSet.setDataItems(dataItemList);
			datasetList.add(dataSet);
		}
		return datasetList;
	}

	private HierarchyVo loadHierarchy() {
		
		HierarchyVo hierarchyVo=new HierarchyVo();
		
		List<HierarchyDetailsVo> hierarchies = new ArrayList<>();

		HierarchyDetailsVo hierarchy1 = new HierarchyDetailsVo("Allianz","Allianz","Group",null,"EUR",null,false,false,true,"20");
		HierarchyDetailsVo hierarchy2 = new HierarchyDetailsVo("S0405","Eurovida","ConsGroup","Life","EUR","Y",true,true,false,"50");
		HierarchyDetailsVo hierarchy3 = new HierarchyDetailsVo("S0890","Amaya","ConsGroup","Life","EUR","Y",true,true,false,"50");
		HierarchyDetailsVo hierarchy4 = new HierarchyDetailsVo("AZFrance","AZFrance","SubGroup",null,"EUR",null,true,true,true,"50");
		HierarchyDetailsVo hierarchy5 = new HierarchyDetailsVo("RC340","Martin Maurel Vie, Paris","ConsGroup","Life","EUR","N",true,true,false,"80");
		HierarchyDetailsVo hierarchy6 = new HierarchyDetailsVo("RC040","Allianz IARD","ConsGroup","Composite","EUR","N",true,true,false,"80");
		HierarchyDetailsVo hierarchy7 = new HierarchyDetailsVo("S0669","Luxembourg","ConsGroup","Non-Life","EUR","Y",true,true,false,"80");
		HierarchyDetailsVo hierarchy8 = new HierarchyDetailsVo("AZItaly","AZItaly","SubGroup",null,"EUR",null,true,true,true,"50");
		HierarchyDetailsVo hierarchy9 = new HierarchyDetailsVo("S0477","CreditRAS","ConsGroup","Life","EUR","N",true,true,false,"80");
		
		
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