package com.kaltia.vo;

import java.io.Serializable;

public class UserPrimarioVO extends BaseVO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1173454003876095436L;
	public UserPrimarioVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	private String idUserPrimario;
	private String userPrimarioUser;
	private String userPrimarioPass;
	private String userPrimarioPerfil;
	private String userPrimarioNombre;
	private String userPrimarioDescrpicion;
	public String getIdUserPrimario() {
		return idUserPrimario;
	}
	public void setIdUserPrimario(String idUserPrimario) {
		this.idUserPrimario = idUserPrimario;
	}
	public String getUserPrimarioUser() {
		return userPrimarioUser;
	}
	public void setUserPrimarioUser(String userPrimarioUser) {
		this.userPrimarioUser = userPrimarioUser;
	}
	public String getUserPrimarioPass() {
		return userPrimarioPass;
	}
	public void setUserPrimarioPass(String userPrimarioPass) {
		this.userPrimarioPass = userPrimarioPass;
	}
	public String getUserPrimarioPerfil() {
		return userPrimarioPerfil;
	}
	public void setUserPrimarioPerfil(String userPrimarioPerfil) {
		this.userPrimarioPerfil = userPrimarioPerfil;
	}
	public String getUserPrimarioNombre() {
		return userPrimarioNombre;
	}
	public void setUserPrimarioNombre(String userPrimarioNombre) {
		this.userPrimarioNombre = userPrimarioNombre;
	}
	public String getUserPrimarioDescrpicion() {
		return userPrimarioDescrpicion;
	}
	public void setUserPrimarioDescrpicion(String userPrimarioDescrpicion) {
		this.userPrimarioDescrpicion = userPrimarioDescrpicion;
	}
	
	

}
