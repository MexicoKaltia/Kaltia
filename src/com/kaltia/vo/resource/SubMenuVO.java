package com.kaltia.vo.resource;

import java.io.Serializable;
import java.util.ArrayList;

public class SubMenuVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	public SubMenuVO() {
		// TODO Auto-generated constructor stub
	}
	
	private ArrayList<String> subMenu;
	private String menu;
	
	
	public ArrayList<String> getSubMenu() {
		return subMenu;
	}
	public void setSubMenu(ArrayList<String> subMenu) {
		this.subMenu = subMenu;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	
	
	

}
