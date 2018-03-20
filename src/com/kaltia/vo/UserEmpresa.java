package com.kaltia.vo;

import java.io.Serializable;

public class UserEmpresa extends BaseVO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public UserEmpresa() {
		// TODO Auto-generated constructor stub
	}
	
	private String idUserEmpresa; 
	private String userEmpresaUser; 
	private String userEmpresaPass; 
	private String userEmpresaDescr; 
	private String userEmpresaPerfil; 
	private String userEmpresaNombre;
	public String getIdUserEmpresa() {
		return idUserEmpresa;
	}
	public void setIdUserEmpresa(String idUserEmpresa) {
		this.idUserEmpresa = idUserEmpresa;
	}
	public String getUserEmpresaUser() {
		return userEmpresaUser;
	}
	public void setUserEmpresaUser(String userEmpresaUser) {
		this.userEmpresaUser = userEmpresaUser;
	}
	public String getUserEmpresaPass() {
		return userEmpresaPass;
	}
	public void setUserEmpresaPass(String userEmpresaPass) {
		this.userEmpresaPass = userEmpresaPass;
	}
	public String getUserEmpresaDescr() {
		return userEmpresaDescr;
	}
	public void setUserEmpresaDescr(String userEmpresaDescr) {
		this.userEmpresaDescr = userEmpresaDescr;
	}
	public String getUserEmpresaPerfil() {
		return userEmpresaPerfil;
	}
	public void setUserEmpresaPerfil(String userEmpresaPerfil) {
		this.userEmpresaPerfil = userEmpresaPerfil;
	}
	public String getUserEmpresaNombre() {
		return userEmpresaNombre;
	}
	public void setUserEmpresaNombre(String userEmpresaNombre) {
		this.userEmpresaNombre = userEmpresaNombre;
	}
	
	

}
