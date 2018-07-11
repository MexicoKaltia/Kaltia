package com.kaltia.infra;

import java.util.ArrayList;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.kaltia.vo.MenuVO;
import com.kaltia.vo.resource.ObjetoVO;
import com.kaltia.vo.resource.SubMenuVO;
import com.kaltia.vo.resource.SubSubMenuVO;

public class ComunResolution {

	public ComunResolution() {
		// TODO Auto-generated constructor stub
	}

	static final Logger logger = LogManager.getLogger(ComunResolution.class.getName());

	public static final String tokenUno = "\\++";
	public static final String tokenDos = "\\&&";
	public static final String tokenTres = "\\--";

	private static MenuVO menuVO;
	private static SubMenuVO subMenuVO;
	private static SubSubMenuVO subSubMenuVO;
	
	

	// Home--Pages--Dropdown--Link Text1--Link Text0--Link
	// Text2++Pages--pages1--pages3&&Dropdown--dor--dor2--dor3++pages1--pages3--pages4&&dor--dor2--dor3

	public static MenuVO comunMenu(String linea) {
		menuVO = new MenuVO();
		ArrayList<String> menuTotal = arrayUno(linea, tokenUno);
		int i = 0;
		for (String a : menuTotal) {
			if (i == 0) {
				menuVO.setMenu(arrayUno(a, tokenTres));
				/*
				 * for(String d : menuVO.getMenu()) { // logger.info("menu:"+d); }
				 */
			} else if (i == 1) {
				menuVO.setSubMenu(menuSub(a, menuVO.getMenu()));
				/*
				 * for(String b : menuVO.getMenu()) { // logger.info("	subMenu:"+b); }
				 */
			} else if (i == 2) {
				menuVO.setSubSubMenu(menuSubSub(a, menuVO.getSubMenu()));
				/*
				 * for(SubMenuVO b : menuVO.getSubMenu()) { for(String c : b.getSubMenu()) { //
				 * logger.info( "subSubMenu:"+c); }}
				 */
			}

			i++;
		}

		return menuVO;
	}
	
	public  static ArrayList<ObjetoVO> seccionArray(String strObjeto){
		ArrayList<ObjetoVO> arrObjetoVO = new ArrayList<ObjetoVO>();
		
		
		ArrayList<String> elemento = arrayUno(strObjeto, tokenUno );
		
		for (String a : elemento ) {
			ObjetoVO objetoVO = new ObjetoVO();
			objetoVO.setObjetoVO(arrayUno(a, tokenDos));
			arrObjetoVO.add(objetoVO);
		}
		
	
		return arrObjetoVO;
	}
	
	

	public static ArrayList<String> arrayUno(String listMenuA, String token) {

		ArrayList<String> menu = new ArrayList<String>();

		String[] temp = listMenuA.split(token);
		for (String a : temp) {
			a=a.replace(",", "|");
			menu.add(a.trim());
			//logger.info("valores:"+a+"-");
		}

		return menu;

	}

	private static ArrayList<SubMenuVO> menuSub(String subMenuOr, ArrayList<String> menu) {

		ArrayList<String> subMenu = new ArrayList<String>();
		ArrayList<SubMenuVO> subMenuArr = new ArrayList<SubMenuVO>();

		String[] temp = subMenuOr.split(tokenDos);

		for (int e = 0; e < temp.length; e++) {
			String[] tempSub = temp[e].split(tokenTres);
			for (int index = 0; index < menu.size(); index++) {
				if (tempSub[0].toString().equals(menu.get(index))) {
					for (String o : tempSub) {
						subMenu.add(o.trim());
					}
					subMenu.remove(0);
					subMenuVO = new SubMenuVO();
					subMenuVO.setSubMenu(subMenu);
					subMenuVO.setMenu(menu.get(index).toString());
					subMenuArr.add(subMenuVO);

					subMenu = new ArrayList<String>();
				}
			}
		}

		return subMenuArr;
	}

	private static ArrayList<SubSubMenuVO> menuSubSub(String subSubM, ArrayList<SubMenuVO> subM) {

		ArrayList<String> subSubMenu = new ArrayList<String>();
		ArrayList<SubSubMenuVO> subSubMenuArr = new ArrayList<SubSubMenuVO>();

		String[] temp = subSubM.split(tokenDos);
		SubMenuVO insSubMenuVO;

		for (int e = 0; e < temp.length; e++) {
			// infra.log.info("tempSub:" + e + ":" + temp[e]);
			String[] tempSub = temp[e].split(tokenTres);
			for (int index = 0; index < subM.size(); index++) {
				insSubMenuVO = subM.get(index);
				ArrayList<String> menuSubArr = insSubMenuVO.getSubMenu();
				for (int subIndex = 0; subIndex < menuSubArr.size(); subIndex++) {
					if (tempSub[0].toString().equals(menuSubArr.get(subIndex))) {
						for (String o : tempSub) {
							subSubMenu.add(o.trim());
							// infra.log.info("subSubMenu:" + o);
						}
						subSubMenu.remove(0);
						subSubMenuVO = new SubSubMenuVO();
						subSubMenuVO.setSubSubMenu(subSubMenu);
						subSubMenuVO.setMenuSub(menuSubArr.get(subIndex));
						subSubMenuArr.add(subSubMenuVO);
						subSubMenu = new ArrayList<String>();
					}

				}

			}
		}

		return subSubMenuArr;
	}
	
	
}
