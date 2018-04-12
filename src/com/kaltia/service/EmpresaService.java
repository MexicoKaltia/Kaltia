package com.kaltia.service;

import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.kaltia.action.ActionBase;
import com.kaltia.dao.AtributoDao;
//import com.kaltia.vo.resource.NosotrosVO;
import com.kaltia.infra.BaseInfra;

public class EmpresaService {
	
	static final Logger logger = LogManager.getLogger(ActionBase.class.getName());
	public static Properties PROPS = BaseInfra.PROPS;

	
	private String[] maquetas;
	

	public String[] getMaquetas() {
		AtributoDao atributoDao = new AtributoDao();
		maquetas = atributoDao.getMaquetas();
		return maquetas;
	}


	public void setMaquetas(String[] maquetas) {
		this.maquetas = maquetas;
	}


	public EmpresaService() {
		// TODO Auto-generated constructor stub
	}
	
	
	/*
	public NosotrosVO actionEmpresa(String actionEmpresa){
		
		NosotrosVO nosotrosVO;
		
		nosotrosVO = (NosotrosVO) IdentidadDao.qryActionEmpresa(actionEmpresa);
		
		
		return nosotrosVO;
	}
	
	
	public static UserEmpresa userEmpresa(String user, String pass, String action){
		
		UserEmpresa userEmpresa = IdentidadDao.qryUserEmpresa(user, pass, action);
		
		return userEmpresa;
		
	}
*/
}
