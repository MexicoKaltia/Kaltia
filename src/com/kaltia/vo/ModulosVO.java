package com.kaltia.vo;

import java.io.Serializable;

public class ModulosVO implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8962513490514402461L;
	private String idModulo;
	private String moduloNombre;
	private String codigoVO;
	private String mensajeVO;
	public String getIdModulo() {
		return idModulo;
	}
	public void setIdModulo(String idModulo) {
		this.idModulo = idModulo;
	}
	public String getModuloNombre() {
		return moduloNombre;
	}
	public void setModuloNombre(String moduloNombre) {
		this.moduloNombre = moduloNombre;
	}
	public String getCodigoVO() {
		return codigoVO;
	}
	public void setCodigoVO(String codigoVO) {
		this.codigoVO = codigoVO;
	}
	public String getMensajeVO() {
		return mensajeVO;
	}
	public void setMensajeVO(String mensajeVO) {
		this.mensajeVO = mensajeVO;
	}
	
	

}
