package com.iris.hierarchy.bean;


public class HierarchyDetailsVo {

	private String itemId;
	
	private String itemName;
	
	private String groupInfo;
	
	private String segment;
	
	private String currency;
	
	private String margin;
	
	private String smOnly;
	
	private boolean childNode;
	
	private boolean childOfPrevious;
	
	private boolean childExists;
	
	public HierarchyDetailsVo() {
		// TODO Auto-generated constructor stub
	}
	
	public HierarchyDetailsVo(String itemId, String itemName, String groupInfo,
			String segment, String currency, String smOnly, boolean childNode, boolean childOfPrevious, boolean childExists,String padding) {
		this.setItemId(itemId);
		this.setItemName(itemName);
		this.setGroupInfo(groupInfo);
		this.setSegment(segment);
		this.setCurrency(currency);
		this.setSmOnly(smOnly);
		this.setChildNode(childNode);
		this.setChildOfPrevious(childOfPrevious);
		this.setChildExists(childExists);
		this.setMargin(padding);
	}

	public String getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getGroupInfo() {
		return groupInfo;
	}

	public void setGroupInfo(String groupInfo) {
		this.groupInfo = groupInfo;
	}

	public String getSegment() {
		return segment;
	}

	public void setSegment(String segment) {
		this.segment = segment;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getSmOnly() {
		return smOnly;
	}

	public void setSmOnly(String smOnly) {
		this.smOnly = smOnly;
	}

	public boolean isChildExists() {
		return childExists;
	}

	public void setChildExists(boolean childExists) {
		this.childExists = childExists;
	}

	public boolean isChildOfPrevious() {
		return childOfPrevious;
	}

	public void setChildOfPrevious(boolean childOfPrevious) {
		this.childOfPrevious = childOfPrevious;
	}

	public boolean isChildNode() {
		return childNode;
	}

	public void setChildNode(boolean childNode) {
		this.childNode = childNode;
	}

	public String getMargin() {
		return margin;
	}

	public void setMargin(String margin) {
		this.margin = margin;
	}

}
