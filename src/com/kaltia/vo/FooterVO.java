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
	private ArrayList<String> footerSeccion1; 
	private ArrayList<String> footerSeccion2; 
	private ArrayList<String> footerSeccion3; 
	private ArrayList<String> footerSeccion4; 
	private ArrayList<String> footerSeccion5; 
	private ArrayList<ObjetoVO> footerSeccionArray1; 
	private ArrayList<ObjetoVO> footerSeccionArray2; 
	private ArrayList<String> footerAux1;
	private ArrayList<String> footerAux2;
	private String footerVarios;
	private ArrayList<String> footerSecciones;
	private ArrayList<String> footerSeccionUbicacion;
	private ArrayList<String> footerSeccionRedes;
	private ArrayList<String> footerSeccionFoot;
	
	
	
	public ArrayList<String> getFooterSeccionFoot() {
		return footerSeccionFoot;
	}
	public void setFooterSeccionFoot(ArrayList<String> footerSeccionFoot) {
		this.footerSeccionFoot = footerSeccionFoot;
	}
	public ArrayList<String> getFooterSecciones() {
		return footerSecciones;
	}
	public void setFooterSecciones(ArrayList<String> footerSecciones) {
		this.footerSecciones = footerSecciones;
	}
	public ArrayList<String> getFooterSeccionUbicacion() {
		return footerSeccionUbicacion;
	}
	public void setFooterSeccionUbicacion(ArrayList<String> footerSeccionUbicacion) {
		this.footerSeccionUbicacion = footerSeccionUbicacion;
	}
	public ArrayList<String> getFooterSeccionRedes() {
		return footerSeccionRedes;
	}
	public void setFooterSeccionRedes(ArrayList<String> footerSeccionRedes) {
		this.footerSeccionRedes = footerSeccionRedes;
	}
	
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
	public ArrayList<String> getFooterSeccion1() {
		return footerSeccion1;
	}
	public void setFooterSeccion1(ArrayList<String> footerSeccion1) {
		this.footerSeccion1 = footerSeccion1;
	}
	public ArrayList<String> getFooterSeccion2() {
		return footerSeccion2;
	}
	public void setFooterSeccion2(ArrayList<String> footerSeccion2) {
		this.footerSeccion2 = footerSeccion2;
	}
	public ArrayList<String> getFooterSeccion3() {
		return footerSeccion3;
	}
	public void setFooterSeccion3(ArrayList<String> footerSeccion3) {
		this.footerSeccion3 = footerSeccion3;
	}
	public ArrayList<String> getFooterSeccion4() {
		return footerSeccion4;
	}
	public void setFooterSeccion4(ArrayList<String> footerSeccion4) {
		this.footerSeccion4 = footerSeccion4;
	}
	public ArrayList<String> getFooterSeccion5() {
		return footerSeccion5;
	}
	public void setFooterSeccion5(ArrayList<String> footerSeccion5) {
		this.footerSeccion5 = footerSeccion5;
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
