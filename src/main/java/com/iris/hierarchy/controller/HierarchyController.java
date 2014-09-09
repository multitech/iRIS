/**
 * @author iximqab
 */
package com.iris.hierarchy.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonArrayBuilder;
import javax.json.JsonWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.iris.dataitem.bean.DataItem;
import com.iris.dataitem.bean.DataItemRepository;
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
	
	@Autowired
	private DataItemRepository dataItemRepository;
	
	/**
	 * Show Hierarchy method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/view_hierarchy.htm", method = RequestMethod.GET)
	protected ModelAndView showHierarchyAction(ModelMap model,HttpServletRequest req) {
		HierarchyVo hierarchyVo=loadHierarchy();
		ModelAndView modelView = new ModelAndView("hierarchy", "hierarchyVo", null);
		String activeConfig = (String) req.getSession().getAttribute("activeConfigName");
		modelView.addObject("hierarchyVo", hierarchyVo);
		modelView.addObject("activeConfigName", activeConfig);
		return modelView;
	}

	/**
	 * Show Assignment matrix method
	 * @param model
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/view_assignment.htm", method = RequestMethod.GET)
	protected ModelAndView showAssignmentMatrixAction(ModelMap model,HttpServletRequest req, @RequestParam(value="id") int id) {
		ModelAndView modelView = new ModelAndView("assignment", "assignment", null);
		List<DataItem> dataSet = dataItemRepository.getDataItems();
		List<String> categories = extractCategories(dataSet);
		String category = categories.get(id);
		List<DataItem> dataItems = extractCategory(dataSet,category);
		String activeConfig = (String) req.getSession().getAttribute("activeConfigName");
		modelView.addObject("activeConfigName", activeConfig);
		modelView.addObject("categories", categories);
		modelView.addObject("dataItems", dataItems);
		return modelView;
	}
	
	@RequestMapping(value = "/view_assignment_ajax.htm", method = RequestMethod.GET)
	public void showAssignmentMatrixAjaxAction(@RequestParam(value="id") int id,HttpServletResponse resp) throws IOException {
		List<DataItem> dataSet = dataItemRepository.getDataItems();
		List<String> categories = extractCategories(dataSet);
		String category = categories.get(id);
		List<DataItem> dataItems = extractCategory(dataSet,category);
		
		JsonArrayBuilder dataItemBuilder = Json.createArrayBuilder();
		
		
		for(DataItem dataItem:dataItems){
			dataItemBuilder.add(Json.createObjectBuilder()
			         .add("name", dataItem.getName())
			         .add("inputMode", dataItem.getInputMode()));
		}
		
         
        //write to file
        JsonWriter jsonWriter = Json.createWriter(resp.getOutputStream());
        JsonArray dataItemArray=dataItemBuilder.build();
		/**
         * We can get JsonWriter from JsonWriterFactory also
        JsonWriterFactory factory = Json.createWriterFactory(null);
        jsonWriter = factory.createWriter(os);
        */
        jsonWriter.writeArray(dataItemArray);
        jsonWriter.close();
		
	}
	
	private List<DataItem> extractCategory(List<DataItem> dataSet, String category) {
		List<DataItem> dataItems=new ArrayList<DataItem>();
		for(DataItem dataItem:dataSet){
			if(category.equals(dataItem.getCategory())){
				dataItems.add(dataItem);
			}
		}
		return dataItems;
	}

	private List<String> extractCategories(List<DataItem> dataItems) {
		List<String> categories=new ArrayList<String>();
		for(DataItem dataItem:dataItems){
			if(!categories.contains(dataItem.getCategory())){
				categories.add(dataItem.getCategory());
			}
		}
		return categories;
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