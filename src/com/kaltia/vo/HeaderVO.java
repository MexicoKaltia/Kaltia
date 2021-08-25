package com.kaltia.vo;

import java.io.Serializable;
import java.util.ArrayList;

import org.json.simple.JSONObject;

import com.kaltia.vo.resource.ObjetoVO;


public class HeaderVO extends BaseVO implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -4188775891182149161L;
	private String idHeader; 
	private String idEmpresa; 
	private ArrayList<String> headerSeccion1; 
	private ArrayList<String> headerSeccion2; 
	private ArrayList<String> headerSeccion3; 
	private ArrayList<String> headerSeccion4; 
	private ArrayList<String> headerSeccion5; 
	private ArrayList<String> headerAux1; 
	private ArrayList<String> headerAux2; 
	private ArrayList<String> headerAux3; 
	private ArrayList<String> headerAux4; 
	private ArrayList<String> headerAux5;
	private MenuVO headerMenu; 
	private ArrayList<ObjetoVO> headerSeccionArray2; 
	private ArrayList<ObjetoVO> headerSeccionArray3; 
	private ArrayList<ObjetoVO> headerSeccionArray4; 
	private ArrayList<ObjetoVO> headerSeccionArray5; 
	private String headerVarios;
	private JSONObject  headerJson;
	
	
	public JSONObject  getHeaderJson() {
		return headerJson;
	}
	public void setHeaderJson(JSONObject  headerJson) {
		this.headerJson = headerJson;
	}
	public String getIdHeader() {
		return idHeader;
	}
	public void setIdHeader(String idHeader) {
		this.idHeader = idHeader;
	}
	public String getIdEmpresa() {
		return idEmpresa;
	}
	public void setIdEmpresa(String idEmpresa) {
		this.idEmpresa = idEmpresa;
	}
	public ArrayList<String> getHeaderSeccion1() {
		return headerSeccion1;
	}
	public void setHeaderSeccion1(ArrayList<String> headerSeccion1) {
		this.headerSeccion1 = headerSeccion1;
	}
	public ArrayList<String> getHeaderSeccion2() {
		return headerSeccion2;
	}
	public void setHeaderSeccion2(ArrayList<String> headerSeccion2) {
		this.headerSeccion2 = headerSeccion2;
	}
	public ArrayList<String> getHeaderSeccion3() {
		return headerSeccion3;
	}
	public void setHeaderSeccion3(ArrayList<String> headerSeccion3) {
		this.headerSeccion3 = headerSeccion3;
	}
	public ArrayList<String> getHeaderSeccion4() {
		return headerSeccion4;
	}
	public void setHeaderSeccion4(ArrayList<String> headerSeccion4) {
		this.headerSeccion4 = headerSeccion4;
	}
	public ArrayList<String> getHeaderSeccion5() {
		return headerSeccion5;
	}
	public void setHeaderSeccion5(ArrayList<String> headerSeccion5) {
		this.headerSeccion5 = headerSeccion5;
	}
	public ArrayList<String> getHeaderAux1() {
		return headerAux1;
	}
	public void setHeaderAux1(ArrayList<String> headerAux1) {
		this.headerAux1 = headerAux1;
	}
	public ArrayList<String> getHeaderAux2() {
		return headerAux2;
	}
	public void setHeaderAux2(ArrayList<String> headerAux2) {
		this.headerAux2 = headerAux2;
	}
	public ArrayList<String> getHeaderAux3() {
		return headerAux3;
	}
	public void setHeaderAux3(ArrayList<String> headerAux3) {
		this.headerAux3 = headerAux3;
	}
	public ArrayList<String> getHeaderAux4() {
		return headerAux4;
	}
	public void setHeaderAux4(ArrayList<String> headerAux4) {
		this.headerAux4 = headerAux4;
	}
	public ArrayList<String> getHeaderAux5() {
		return headerAux5;
	}
	public void setHeaderAux5(ArrayList<String> headerAux5) {
		this.headerAux5 = headerAux5;
	}
	public MenuVO getHeaderMenu() {
		return headerMenu;
	}
	public void setHeaderMenu(MenuVO headerMenu) {
		this.headerMenu = headerMenu;
	}
	public ArrayList<ObjetoVO> getHeaderSeccionArray2() {
		return headerSeccionArray2;
	}
	public void setHeaderSeccionArray2(ArrayList<ObjetoVO> headerSeccionArray2) {
		this.headerSeccionArray2 = headerSeccionArray2;
	}
	public ArrayList<ObjetoVO> getHeaderSeccionArray3() {
		return headerSeccionArray3;
	}
	public void setHeaderSeccionArray3(ArrayList<ObjetoVO> headerSeccionArray3) {
		this.headerSeccionArray3 = headerSeccionArray3;
	}
	public ArrayList<ObjetoVO> getHeaderSeccionArray4() {
		return headerSeccionArray4;
	}
	public void setHeaderSeccionArray4(ArrayList<ObjetoVO> headerSeccionArray4) {
		this.headerSeccionArray4 = headerSeccionArray4;
	}
	public ArrayList<ObjetoVO> getHeaderSeccionArray5() {
		return headerSeccionArray5;
	}
	public void setHeaderSeccionArray5(ArrayList<ObjetoVO> headerSeccionArray5) {
		this.headerSeccionArray5 = headerSeccionArray5;
	}
	public String getHeaderVarios() {
		return headerVarios;
	}
	public void setHeaderVarios(String headerVarios) {
		this.headerVarios = headerVarios;
	}
	
	
		
}