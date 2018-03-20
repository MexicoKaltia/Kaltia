package com.kaltia.vo;

import java.io.Serializable;
import java.util.ArrayList;

import com.kaltia.vo.resource.ObjetoVO;

public class FooterVO extends BaseVO implements Serializable{
	
	

/**
	 * 
	 */
	private static final long serialVersionUID = 7451509424190078590L;
	
	private String idFooter; 
	private String idEmpresa; 
	private ArrayList<String> footerLista1; 
	private ArrayList<String> footerLista2; 
	private ArrayList<String> footerLista3; 
	private ArrayList<String> footerLista4; 
	private ArrayList<String> footerLista5; 
	private ArrayList<ObjetoVO> footerSeccionArray1; 
	private ArrayList<ObjetoVO> footerSeccionArray2; 
	private ArrayList<String> footerAux1;
	private ArrayList<String> footerAux2;
	private String footerVarios;
	public String getIdFooter() {
		return idFooter;
	}
	public void setIdFooter(String idFooter) {
		this.idFooter = idFooter;
	}
	public String getIdEmpresa() {
		return idEmpresa;
	}
	public void setIdEmpresa(String idEmpresa) {
		this.idEmpresa = idEmpresa;
	}
	public ArrayList<String> getFooterLista1() {
		return footerLista1;
	}
	public void setFooterLista1(ArrayList<String> footerLista1) {
		this.footerLista1 = footerLista1;
	}
	public ArrayList<String> getFooterLista2() {
		return footerLista2;
	}
	public void setFooterLista2(ArrayList<String> footerLista2) {
		this.footerLista2 = footerLista2;
	}
	public ArrayList<String> getFooterLista3() {
		return footerLista3;
	}
	public void setFooterLista3(ArrayList<String> footerLista3) {
		this.footerLista3 = footerLista3;
	}
	public ArrayList<String> getFooterLista4() {
		return footerLista4;
	}
	public void setFooterLista4(ArrayList<String> footerLista4) {
		this.footerLista4 = footerLista4;
	}
	public ArrayList<String> getFooterLista5() {
		return footerLista5;
	}
	public void setFooterLista5(ArrayList<String> footerLista5) {
		this.footerLista5 = footerLista5;
	}
	public ArrayList<ObjetoVO> getFooterSeccionArray1() {
		return footerSeccionArray1;
	}
	public void setFooterSeccionArray1(ArrayList<ObjetoVO> footerSeccionArray1) {
		this.footerSeccionArray1 = footerSeccionArray1;
	}
	public ArrayList<ObjetoVO> getFooterSeccionArray2() {
		return footerSeccionArray2;
	}
	public void setFooterSeccionArray2(ArrayList<ObjetoVO> footerSeccionArray2) {
		this.footerSeccionArray2 = footerSeccionArray2;
	}
	public ArrayList<String> getFooterAux1() {
		return footerAux1;
	}
	public void setFooterAux1(ArrayList<String> footerAux1) {
		this.footerAux1 = footerAux1;
	}
	public ArrayList<String> getFooterAux2() {
		return footerAux2;
	}
	public void setFooterAux2(ArrayList<String> footerAux2) {
		this.footerAux2 = footerAux2;
	}
	public String getFooterVarios() {
		return footerVarios;
	}
	public void setFooterVarios(String footerVarios) {
		this.footerVarios = footerVarios;
	}
	
	
	
		

}
