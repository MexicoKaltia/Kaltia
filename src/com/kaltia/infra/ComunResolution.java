package com.kaltia.infra;

import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

import com.kaltia.vo.MenuVO;
import com.kaltia.vo.resource.ArrayObjetoVO;
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
	
	public  static ArrayList<ArrayObjetoVO> seccionArrayObjecto(String strObjeto){
		 ArrayList<ArrayObjetoVO> arrObjetosVO = new  ArrayList<ArrayObjetoVO>();
//		logger.info(strObjeto);
		String[] tmp = strObjeto.split(tokenTres);
		for(String a : tmp) {
//			logger.info(a);
			ArrayObjetoVO arrayObjeto = new ArrayObjetoVO();
			arrayObjeto.setArrayObjetoVO(seccionArray(a));
			arrObjetosVO.add(arrayObjeto);
		}
		
		return arrObjetosVO;
	}
	
	

	public  static ArrayList<ObjetoVO> seccionArray(String strObjeto){
		ArrayList<ObjetoVO> arrObjetoVO = new ArrayList<ObjetoVO>();
		
		
		ArrayList<String> elemento = arrayUno(strObjeto, tokenUno );
		
		for (String a : elemento ) {
//			logger.info(a);
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



	public static JSONObject seccionArrayJSON(String string) {
		JSONObject jsonObject = new JSONObject ();
		List<String> listCategoria = new ArrayList();
		String[] tmp = string.split(tokenTres);	
		for(String a : tmp) {
			String[] tmp2 = a.split(tokenUno);
			jsonObject.put(tmp2[0],jsonArray(a));
		}
//		logger.info(jsonObject);
		return jsonObject;
	}



	private static JSONArray jsonArray(String a) {
		JSONObject jsonObject = new JSONObject ();
		JSONArray jsonArray = new JSONArray ();
		String[] tmp2 = a.split(tokenUno);
		for(int i=1; i<tmp2.length; i++) {
			String[] tmp3 = tmp2[i].split(tokenDos);
			jsonObject.put("imagen", tmp3[0]);
			jsonObject.put("texto", tmp3[1]);
			jsonObject.put("descripcion", tmp3[2]);
			jsonArray.put(jsonObject);
		}
		return jsonArray;
	}



	public static String seccionArrayString(String string) {
		JSONObject json = new JSONObject();
		json = seccionArrayJSON(string);
		
		return json.toString();
	}
	
	
}
