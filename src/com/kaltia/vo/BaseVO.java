package com.kaltia.vo;

import java.io.Serializable;

public class BaseVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String codigoVO = "00";
	private String mensajeVO= "OK";
	private String idAction;
	
	
	
	public String getIdAction() {
		return idAction;
	}
	public void setIdAction(String idAction) {
		this.idAction = idAction;
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
