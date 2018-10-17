package com.kaltia.vo;

import java.io.Serializable;
import java.util.ArrayList;

public class IdentidadVO extends BaseVO implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7197389898442336397L;
	private String action;
	private String empresa;
	private String actionEstilo;
	private String headerRequerido;
	private String bodyRequerido; 
	private String leftRequerido;
	private String rigthRequerido;
	private String footerRequerido;
	private String actionPrincipal;
	private ArrayList<String> actionSeccion1;
	private ArrayList<String> actionSeccion2;
	private String ambiente;
	
	
	
	public String getAmbiente() {
		return ambiente;
	}
	public void setAmbiente(String ambiente) {
		this.ambiente = ambiente;
	}
	public String getActionPrincipal() {
		return actionPrincipal;
	}
	public void setActionPrincipal(String actionPrincipal) {
		this.actionPrincipal = actionPrincipal;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public String getEmpresa() {
		return empresa;
	}
	public void setEmpresa(String empresa) {
		this.empresa = empresa;
	}
	public String getActionEstilo() {
		return actionEstilo;
	}
	public void setActionEstilo(String actionEstilo) {
		this.actionEstilo = actionEstilo;
	}
	public String getHeaderRequerido() {
		return headerRequerido;
	}
	public void setHeaderRequerido(String headerRequerido) {
		this.headerRequerido = headerRequerido;
	}
	public String getBodyRequerido() {
		return bodyRequerido;
	}
	public void setBodyRequerido(String bodyRequerido) {
		this.bodyRequerido = bodyRequerido;
	}
	public String getLeftRequerido() {
		return leftRequerido;
	}
	public void setLeftRequerido(String leftRequerido) {
		this.leftRequerido = leftRequerido;
	}
	public String getRigthRequerido() {
		return rigthRequerido;
	}
	public void setRigthRequerido(String rigthRequerido) {
		this.rigthRequerido = rigthRequerido;
	}
	public String getFooterRequerido() {
		return footerRequerido;
	}
	public void setFooterRequerido(String footerRequerido) {
		this.footerRequerido = footerRequerido;
	}
	public ArrayList<String> getActionSeccion1() {
		return actionSeccion1;
	}
	public void setActionSeccion1(ArrayList<String> actionSeccion1) {
		this.actionSeccion1 = actionSeccion1;
	}
	public ArrayList<String> getActionSeccion2() {
		return actionSeccion2;
	}
	public void setActionSeccion2(ArrayList<String> actionSeccion2) {
		this.actionSeccion2 = actionSeccion2;
	}
	
}
