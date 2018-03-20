package com.kaltia.vo;

import java.util.ArrayList;
import java.util.List;

import com.kaltia.vo.resource.SubMenuVO;
import com.kaltia.vo.resource.SubSubMenuVO;

public class MenuVO {

	private ArrayList<String> menu;
	private ArrayList<SubMenuVO> subMenu;
	private ArrayList<SubSubMenuVO> subSubMenu;
	
	
	
	
	

	
	public ArrayList<String> getMenu() {
		return menu;
	}

	public void setMenu(ArrayList<String> menu) {
		this.menu = menu;
	}

	public ArrayList<SubMenuVO> getSubMenu() {
		return subMenu;
	}

	public void setSubMenu(ArrayList<SubMenuVO> subMenu) {
		this.subMenu = subMenu;
	}

	public ArrayList<SubSubMenuVO> getSubSubMenu() {
		return subSubMenu;
	}

	public void setSubSubMenu(ArrayList<SubSubMenuVO> subSubMenu) {
		this.subSubMenu = subSubMenu;
	}

	public MenuVO() {
		// TODO Auto-generated constructor stub
	}
	
	/*public MenuVO(String menuA)
	   {
	      this.menuA = menuA;
	   }
	public MenuVO(String subMenuA, String sub)
	   {
	      this.subMenuA = subMenuA;
	   }
	public MenuVO(String subSubmenuA, String sub, String subSub)
	   {
	      this.subSubMenuA = subSubMenuA;
	   }
	
		*/
	
	
	
	
	
	
		
	}
