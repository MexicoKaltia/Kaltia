package com.kaltia.vo.resource;

import java.io.Serializable;
import java.util.ArrayList;

public class SubSubMenuVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;



	public SubSubMenuVO() {
		// TODO Auto-generated constructor stub
	}
	
	private ArrayList<String> subSubMenu;
	private String menuSub;
	
	

	public String getMenuSub() {
		return menuSub;
	}

	public void setMenuSub(String menuSub) {
		this.menuSub = menuSub;
	}

	public ArrayList<String> getSubSubMenu() {
		return subSubMenu;
	}

	public void setSubSubMenu(ArrayList<String> subSubMenu) {
		this.subSubMenu = subSubMenu;
	}
	
	

}
